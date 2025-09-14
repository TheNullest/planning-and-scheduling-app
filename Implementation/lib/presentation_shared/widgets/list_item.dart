import 'package:flutter/material.dart';
import 'package:zamaan/presentation_shared/theme/elementary.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget(
      {required this.text,
      super.key,
      this.isSoftDeleted = false,
      this.onDelete,
      this.onEdit,
      Color? color,
      Color? softDeleteColor})
      : color = isSoftDeleted
            ? softDeleteColor ?? ElementaryColors.error
            : color ?? ElementaryColors.time,
        _trashColor = isSoftDeleted ? ElementaryColors.time : ElementaryColors.error;

  final VoidCallback? onDelete;
  final VoidCallback? onEdit;
  final String text;
  final Color color;
  final bool isSoftDeleted;
  final Color _trashColor;
  @override
  Widget build(BuildContext context) {
    const colorAnimationDuration = Duration(milliseconds: 200);
    return AnimatedContainer(
      duration: colorAnimationDuration,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color.withAlpha(17),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withAlpha(50)),
      ),
      child: Row(
        children: [
          AnimatedContainer(
            duration: colorAnimationDuration,
            width: 6,
            height: 24,
            decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500, color: color),
            ),
          ),
          if (onEdit != null)
            IconButton(
              icon: AnimatedSwitcher(
                duration: colorAnimationDuration,
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: ElementaryColors.primary.withAlpha(200),
                  key: ValueKey(isSoftDeleted),
                ),
              ),
              onPressed: onEdit,
            ),
          IconButton(
            icon: AnimatedSwitcher(
              duration: colorAnimationDuration,
              child: Icon(
                isSoftDeleted ? Icons.restore_from_trash : Icons.delete,
                size: 20,
                color: _trashColor.withAlpha(225),
                key: ValueKey(isSoftDeleted),
              ),
            ),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
