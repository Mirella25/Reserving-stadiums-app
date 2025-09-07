import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:reserving_stadiums_app/core/constants/app_colors.dart';
import 'package:reserving_stadiums_app/core/dependency_injection/injections.dart';

import '../bloc/payment/payment_bloc.dart';
import '../bloc/payment/payment_event.dart';
import '../bloc/payment/payment_state.dart';

class PaymentBottomSheet extends StatelessWidget {
  final int bookingId;
  final num amount;

  const PaymentBottomSheet({
    super.key,
    required this.bookingId,
    required this.amount,
  });

  /// استدعاء جاهز لفتح الشيت
  static Future<void> show(
      BuildContext context, {
        required int bookingId,
        required num amount,
      }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => BlocProvider(
        create: (_) => getIt<PaymentBloc>(),
        child: PaymentBottomSheet(bookingId: bookingId, amount: amount),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h + bottomInset),
      child: BlocConsumer<PaymentBloc, PaymentState>(
        listener: (context, state) async {
          if (state is PaymentInitiated) {
            // فتح واجهة Stripe PaymentSheet ثم إرسال حدث الإكمال
            try {
              await Stripe.instance.initPaymentSheet(
                paymentSheetParameters: SetupPaymentSheetParameters(
                  paymentIntentClientSecret: state.clientSecret,
                  merchantDisplayName: 'Captain',
                ),
              );
              await Stripe.instance.presentPaymentSheet();

              context
                  .read<PaymentBloc>()
                  .add(PaymentSheetCompleted(bookingId: state.bookingId));
            } on StripeException catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    e.error.localizedMessage ?? 'Payment cancelled',
                  ),
                ),
              );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(e.toString())),
              );
            }
          } else if (state is PaymentSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            Navigator.of(context).pop();
          } else if (state is PaymentFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state is PaymentLoading;

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pay',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12.h),
              Text('Amount: $amount USD', style: TextStyle(fontSize: 14.sp)),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () => context.read<PaymentBloc>().add(
                    StartPayment(bookingId: bookingId, amount: amount),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                  ),
                  child: isLoading
                      ? SizedBox(
                    height: 18.sp,
                    width: 18.sp,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                      : const Text(
                    'Pay with card',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
            ],
          );
        },
      ),
    );
  }
}
