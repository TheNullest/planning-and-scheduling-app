import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends StatelessWidget {
  const ColorPickerWidget({required this.onColorChanged, required this.color, super.key});

  final void Function(Color color) onColorChanged;
  final Color color;
  @override
  @override
  Widget build(BuildContext context) {
    late var selectedColor = color;
    return Row(
      children: [
        const Text('Color:'),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () async {
            final pickedColor = await showDialog<Color>(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('Pick a color'),
                content: BlockPicker(
                  pickerColor: color,
                  onColorChanged: (c) {
                    selectedColor = c;
                    Navigator.of(context).pop(c);
                  },
                ),
              ),
            );

            if (pickedColor != null) {
              onColorChanged(pickedColor);
            }
          },
          child: CircleAvatar(backgroundColor: selectedColor),
        ),
      ],
    );
  }
}
