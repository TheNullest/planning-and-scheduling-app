import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';

Future<void> customShowModalBottomSheetDialog<VM extends ChangeNotifier>(
        BuildContext context, VM vm, Widget child,
        {Color? backColor, bool isRadiusAllowed = true}) async =>
    showModalBottomSheet(
      context: context,
      backgroundColor: backColor ?? Colors.black.withAlpha(210),
      isScrollControlled: true,
      constraints: BoxConstraints(
          minHeight: context.mediaQueryHeight / 2, minWidth: context.mediaQueryWidth / 1.1),
      shape: RoundedRectangleBorder(
          borderRadius: isRadiusAllowed
              ? const BorderRadius.vertical(top: Radius.circular(15))
              : BorderRadius.zero),
      builder: (_) => ChangeNotifierProvider<VM>.value(
        value: vm,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: child,
          ),
        ),
      ),
    );
