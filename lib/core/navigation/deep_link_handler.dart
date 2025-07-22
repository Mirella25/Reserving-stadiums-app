import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';

import '../../features/auth/data/datasources/auth_local_datasource.dart';
import '../../features/auth/presentation/pages/reset_password_page.dart';
import '../../features/auth/presentation/pages/verified_message_page.dart';

import '../../main.dart';
import '../dependency_injection/injections.dart';

class DeepLinkHandler extends StatefulWidget {
  final Widget child;
  const DeepLinkHandler({super.key, required this.child});

  @override
  State<DeepLinkHandler> createState() => _DeepLinkHandlerState();
}

class _DeepLinkHandlerState extends State<DeepLinkHandler> {
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _listenToDeepLinks();
  }

  void _listenToDeepLinks() async {
    try {
      final initialLink = await getInitialLink();
      if (initialLink != null) _handleLink(initialLink);

      _sub = linkStream.listen((String? link) {
        if (link != null) _handleLink(link);
      });
    } catch (e) {
      print('❌ Error listening to deep links: $e');
    }
  }

  void _handleLink(String link) async {
    print('🔗 Received deep link: $link');
    try {
      final uri = Uri.parse(link);

      switch (uri.host) {
        case 'email-verified':
          await _handleEmailVerification(uri);
          break;

        case 'reset-password':
          _handleResetPassword(uri);
          break;

        default:
          print('❌ Unknown deep link host: ${uri.host}');
      }
    } catch (e) {
      print('❌ Failed to parse deep link: $e');
    }
  }

  Future<void> _handleEmailVerification(Uri uri) async {
    final token = uri.queryParameters['token'];
    final email = uri.queryParameters['email'];

    if (token != null && email != null) {
      final authLocal = getIt<AuthLocalDataSource>();
      await authLocal.cacheToken(token);
      await authLocal.cacheIsVerified(true);
      print('✅ Email verified link received: token=$token, email=$email');

      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const VerifiedMessagePage()),
        (route) => false,
      );
    } else {
      print('⚠️ Missing token or email in email verification link');
    }
  }

  void _handleResetPassword(Uri uri) {
    final token = uri.queryParameters['token'];
    final email = uri.queryParameters['email'];

    if (token != null && email != null) {
      print('🔑 Reset password link: token=$token, email=$email');

      navigatorKey.currentState?.push(
        MaterialPageRoute(
          builder: (_) => ResetPasswordPage(token: token, email: email),
        ),
      );
    } else {
      print('⚠️ Missing token or email in reset password link');
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
