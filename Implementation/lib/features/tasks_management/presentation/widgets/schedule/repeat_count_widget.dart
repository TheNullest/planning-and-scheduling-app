import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RepeatCountWidget extends StatefulWidget {
  const RepeatCountWidget({
    super.key,
    this.initialValue = -1,
    this.onChanged,
    this.label = 'Repeat Count',
    this.hint = '-1 or ∞ for Forever',
  });
  final int initialValue;
  final ValueChanged<int>? onChanged;
  final String label;
  final String hint;

  @override
  State<RepeatCountWidget> createState() => _RepeatCountWidgetState();
}

class _RepeatCountWidgetState extends State<RepeatCountWidget> {
  late int _value;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
    _controller = TextEditingController(text: _displayValue);
  }

  String get _displayValue => _value == -1 ? '∞' : _value.toString();

  void _updateValue(int newValue) {
    setState(() {
      _value = newValue < -1 ? -1 : newValue;
      _controller.text = _displayValue;
    });
    widget.onChanged?.call(_value);
  }

  void _increment() => _updateValue(_value == -1 ? 1 : _value + 1);
  void _decrement() => _updateValue(_value == -1 ? -1 : _value - 1);

  void _onTextChanged(String text) {
    final trimmedText = text.trim();
    if (trimmedText == '∞' || trimmedText == '-1') {
      _updateValue(-1);
      return;
    }

    final parsed = int.tryParse(trimmedText);
    if (parsed != null && parsed >= 0) {
      _updateValue(parsed);
    } else if (trimmedText.isEmpty) {
      // allow empty temporarily while typing
      return;
    } else {
      // revert invalid entry
      _controller.text = _displayValue;
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        icon: const Icon(Icons.repeat),
        border: const OutlineInputBorder(),
        suffixIcon: Column(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                minimumSize: const Size(25, 25),
                padding: EdgeInsets.zero,
              ),
              icon: const Icon(Icons.add_circle_outline),
              onPressed: _increment,
              tooltip: 'Increase',
            ),
            IconButton(
              icon: const Icon(Icons.remove_circle_outline),
              onPressed: _decrement,
              tooltip: 'Decrease',
            ),
          ],
        ),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+|-1|∞)?$')),
      ],
      onChanged: _onTextChanged,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
