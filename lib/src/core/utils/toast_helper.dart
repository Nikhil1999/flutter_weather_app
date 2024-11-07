import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:weather/src/core/configs/color_config.dart';
import 'package:weather/src/core/configs/style_config.dart';

/// Helper class for toast
class ToastHelper {
  const ToastHelper._();

  /// To show a toast with a message
  static void showToast({
    required String message,
  }) {
    BotToast.showCustomText(
      useSafeArea: true,
      onlyOne: true,
      crossPage: true,
      clickClose: false,
      ignoreContentClick: false,
      backButtonBehavior: BackButtonBehavior.none,
      duration: const Duration(seconds: 3),
      animationDuration: const Duration(milliseconds: 200),
      animationReverseDuration: const Duration(milliseconds: 200),
      toastBuilder: (cancelFunc) => ToastView(message: message),
    );
  }
}

class ToastView extends StatelessWidget {
  final String message;

  const ToastView({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: ColorConfig.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: StyleConfig.text.style.copyWith(
                    color: ColorConfig.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
