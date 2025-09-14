import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDropdownButtonWidget<VM , T> extends StatelessWidget {
  const CustomDropdownButtonWidget({
    required this.selector,
    required this.items,
    required this.itemBuilder,
    required this.onChanged,
    required this.label,
    super.key,
  });

  final T Function(BuildContext, VM) selector;
  final List<T> items;
  final Widget Function(T) itemBuilder; // Dynamic child per item
  final void Function(T?) onChanged; // Handle nullable selection
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Text(label),
          Selector<VM, T>(
            selector: selector,
            builder: (context, currentValue, _) {
              return DropdownButton<T>(
                value: currentValue,
                items: items
                    .map(
                      (item) => DropdownMenuItem<T>(
                        value: item,
                        child: itemBuilder(item), // Unique widget per item
                      ),
                    )
                    .toList(),
                onChanged: onChanged,
              );
            },
          ),
        ],
      ),
    );
  }
}
