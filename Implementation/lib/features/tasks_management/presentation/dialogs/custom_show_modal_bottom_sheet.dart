import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamaan/core/extensions/context_extension.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';

Future<void> customShowModalBottomSheetDialog<VM extends ChangeNotifier>(
  BuildContext context,
  VM? vm,
  Widget body, {
  IconData? headerIcon,
  String? header,
  Color? backColor,
  bool isRadiusAllowed = true,
  bool isDismissible = true,
  bool enableDrag = true,
  bool isScrollable = true,
  VoidCallback? onClose,
}) async =>
    showModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: backColor ?? ElementaryColors.surface,
      isScrollControlled: true,
      constraints: BoxConstraints(
          minHeight: context.mediaQueryHeight / 2, minWidth: context.mediaQueryWidth / 1.1),
      shape: RoundedRectangleBorder(
          borderRadius: isRadiusAllowed
              ? const BorderRadius.vertical(top: Radius.circular(15))
              : BorderRadius.zero),
      builder: (_) => ChangeNotifierProvider<VM>.value(
        value: vm!,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actionsPadding: const EdgeInsets.symmetric(horizontal: 10),
            actions: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (headerIcon != null)
                      Icon(headerIcon, size: 28, color: ElementaryColors.primary),
                    if (header != null)
                      Text(
                        header,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: ElementaryColors.secondary, fontWeight: FontWeight.w700),
                      ),
                    const Spacer(),
                    IconButton.filled(
                        onPressed: () {
                          if (onClose != null) onClose();
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close)),
                  ],
                ),
              )
            ],
          ),
          body: Expanded(
            child: isScrollable
                ? SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: body,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: body,
                  ),
          ),
        ),
      ),
    );
