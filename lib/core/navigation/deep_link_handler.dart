import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';
import 'dart:async';

import '../../features/auth/data/datasources/auth_local_datasource.dart';
import '../../features/auth/presentation/pages/verified_message_page.dart';

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
    final initialLink = await getInitialLink();
    if (initialLink != null) _handleLink(initialLink);

    _sub = linkStream.listen((String? link) {
      if (link != null) _handleLink(link);
    });
  }

  void _handleLink(String link) {
    final uri = Uri.parse(link);
    if (uri.host == 'email-verified') {
      final token = uri.queryParameters['token'];
      final email = uri.queryParameters['email'];

      if (token != null && email != null) {
        AuthLocalDataSourceImpl sh = AuthLocalDataSourceImpl();
        sh.cacheToken(token);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const VerifiedMessagePage(),
          ),
        );
      }
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
