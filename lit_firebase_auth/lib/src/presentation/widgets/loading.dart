import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../application/auth/sign_in_handler/sign_in_handler_state.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSubmitting = context.select(
      (SignInHandlerState state) => state.isSubmitting,
    );
    return SizedBox(
      height: 50,
      width: 50,
      child: Visibility(
        visible: isSubmitting,
        child: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
