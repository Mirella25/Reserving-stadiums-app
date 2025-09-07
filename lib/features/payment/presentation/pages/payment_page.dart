import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../bloc/payment_bloc.dart';
import '../bloc/payment_event.dart';
import '../bloc/payment_state.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _inited = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<PaymentBloc>();
      bloc.add(InitPaymentSheetEvent(amount: 1000, currency: 'usd'));
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PaymentBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Stripe Payment (PaymentSheet)')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) async {
            if (state is PaymentFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
            } else if (state is PaymentSheetReady) {
              await Stripe.instance.initPaymentSheet(
                paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: state.clientSecret,
                  merchantDisplayName: 'My Stadium App',
                ),
              );
              setState(() => _inited = true);
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('PaymentSheet ready')));
            } else if (state is OnboardingStarted) {
              await launchUrlString(state.url, mode: LaunchMode.inAppWebView);
            } else if (state is OnboardingStatus) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('payouts_enabled=${state.payoutsEnabled}')));
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    bloc.add(
                        InitPaymentSheetEvent(amount: 1000, currency: 'usd'));
                  },
                  child: Text('Prepare PaymentSheet (10.00 USD)'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _inited
                      ? () async {
                          try {
                            await Stripe.instance.presentPaymentSheet();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Payment complete')));
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Payment failed: $e')));
                          }
                        }
                      : null,
                  child: Text('Pay (present PaymentSheet)'),
                ),
                Divider(),
                ElevatedButton(
                  onPressed: () {
                    bloc.add(StartOnboardingEvent());
                  },
                  child: Text('Start Owner Onboarding (mock)'),
                ),
                ElevatedButton(
                  onPressed: () {
                    bloc.add(CheckOwnerStatusEvent());
                  },
                  child: Text('Check Owner Status (mock)'),
                ),
                SizedBox(height: 20),
                if (state is PaymentLoading) CircularProgressIndicator(),
                if (state is PaymentFailure)
                  Text('Error: ${state.message}',
                      style: TextStyle(color: Colors.red)),
              ],
            );
          },
        ),
      ),
    );
  }
}
