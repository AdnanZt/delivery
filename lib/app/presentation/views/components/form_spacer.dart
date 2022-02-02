import 'package:flutter/material.dart';

import '../../utils/ui_constants.dart';

class FormSpacer extends StatelessWidget {
  /// Represents the spacing height between form widgets
  const FormSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: UIConstants.formVerticalSpacing,
    );
  }
}
