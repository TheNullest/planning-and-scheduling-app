import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputField extends StatefulWidget {
  const NumberInputField({
    required this.initialValue,
    required this.onChanged,
    super.key,
  });
  final int initialValue;
  final ValueChanged<int> onChanged;

  @override
  State<NumberInputField> createState() => _NumberInputFieldState();
}

class _NumberInputFieldState extends State<NumberInputField> {
  late TextEditingController _controller;
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
    _controller = TextEditingController(text: _currentValue.toString());
  }

  @override
  void didUpdateWidget(covariant NumberInputField oldWidget) {
    _currentValue = widget.initialValue;
    setState(() {
      _controller.text = _currentValue.toString();
    });
    super.didUpdateWidget(oldWidget);
  }

  void _increment() {
    setState(() {
      _currentValue++;
      _controller.text = _currentValue.toString();
      widget.onChanged(_currentValue);
    });
  }

  void _decrement() {
    setState(() {
      if (_currentValue > 0) {
        _currentValue--;
        _controller.text = _currentValue.toString();
        widget.onChanged(_currentValue);
      }
    });
  }

  void _onTextChanged(String value) {
    if (value.isEmpty) {
      // Allow empty and treat as 0?
      setState(() {
        _currentValue = 0;
      });
      widget.onChanged(0);
      return;
    }

    final number = int.tryParse(value);
    if (number != null && number >= 0) {
      setState(() {
        _currentValue = number;
      });
      widget.onChanged(number);
    } else {
      // If invalid, revert to the last valid value
      _controller.text = _currentValue.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        SizedBox(
          width: 60,
          child: TextField(
            controller: _controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: _onTextChanged,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
