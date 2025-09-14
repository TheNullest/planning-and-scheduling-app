import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zamaan/core/extensions/num.dart';

/// A reusable, animated, and centered header widget that
/// toggles between an [icon] and a [checkbox + icon] combo
/// when [selectionModeListenable] changes.
///
/// Ideal for list or schedule headers supporting multi-select.
class SelectableWidget extends StatelessWidget {
  const SelectableWidget({
    required this.selectionModeListenable,
    required this.icon,
    required this.isSelectedListenable,
    required this.onToggleSelection,
    this.child,
    super.key,
    this.iconColor,
    this.iconSize,
    this.width = 70,
    this.height,
    this.paddingLeft,
    this.decoration,
    this.selectedDecoration,
    this.shouldChildListenToSelection = false,
    this.tristate = true,
  });

  final ValueListenable<bool> selectionModeListenable;
  final ValueListenable<bool?> isSelectedListenable;
  final void Function(bool?) onToggleSelection;
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;
  final Widget? child;
  final double? width;
  final double? height;
  final double? paddingLeft;

  /// Decoration to use when not selected (fallback/default).
  final Decoration? decoration;

  /// Decoration to use when selected. If null, [decoration] will be used.
  final Decoration? selectedDecoration;
  final bool shouldChildListenToSelection;
  final bool tristate;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<bool>(
        valueListenable: selectionModeListenable,
        builder: (context, isSelectionMode, _) => ValueListenableBuilder<bool?>(
            valueListenable: isSelectedListenable,
            builder: (context, isSelected, _) => Padding(
                  padding: EdgeInsets.only(left: paddingLeft ?? 0),
                  child: MouseRegion(
                    cursor: isSelectionMode ? SystemMouseCursors.click : MouseCursor.defer,
                    child: GestureDetector(
                      onTap: () {
                        if (isSelectionMode) {
                          final currentSelection = isSelectedListenable.value;
                          onToggleSelection(!(currentSelection ?? false));
                        }
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        decoration: isSelected == true ? selectedDecoration : decoration,
                        width: _calculateWidth(isSelectionMode),
                        height: height,
                        alignment: Alignment.center, // 🔥 Core fix: keeps everything centered
                        child: Row(
                          children: [
                            // --- Checkbox
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),
                              transitionBuilder: (child, animation) => FadeTransition(
                                opacity: animation,
                                child: SizeTransition(
                                  sizeFactor: animation,
                                  axis: Axis.horizontal,
                                  child: child,
                                ),
                              ),
                              child: isSelectionMode
                                  ? Center(
                                      child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        activeColor:
                                            iconColor ?? Theme.of(context).colorScheme.primary,
                                        tristate: tristate,
                                        value: isSelected,
                                        splashRadius: 0,
                                        onChanged: (value) => onToggleSelection(value),
                                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                        visualDensity: VisualDensity.compact,
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                            ),

                            // --- Icon + Optional Child ---
                            Expanded(
                              child: Row(
                                mainAxisAlignment: child != null
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    icon,
                                    size: iconSize ?? 24,
                                    color: iconColor ?? Theme.of(context).colorScheme.primary,
                                  ),

                                  // --- Optional child (e.g., text/title) ---
                                  _buildChild(context) ?? const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
      );

  double _calculateWidth(bool isSelectionMode) =>
      isSelectionMode ? width ?? 70 : (width != null ? width! - 35 : 35);

  Widget? _buildChild(BuildContext context) {
    if (child == null) return null;

    final row = Row(
      children: [
        8.sizedBoxWidth,
        child!,
      ],
    );

    if (shouldChildListenToSelection) {
      return ValueListenableBuilder<bool?>(
        valueListenable: isSelectedListenable,
        builder: (context, isSelected, _) {
          return row;
        },
      );
    } else {
      return row;
    }
  }
}
