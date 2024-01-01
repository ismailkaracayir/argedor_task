import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final T? value;
  final String Function(T)? displayItem;
  final void Function(T?)? onChanged;
  final Color? textColor;

  CustomDropdownButton({
    required this.items,
    required this.value,
    required this.displayItem,
    required this.onChanged,
    required this.textColor,
  });

  factory CustomDropdownButton.withDefaultValue({
    List<T> items = const [],
    T? defaultValue,
    String Function(T)? displayItem,
    void Function(T?)? onChanged,
    final Color? textColor = Colors.white,
  }) {
    return CustomDropdownButton(
      items: items,
      value: defaultValue,
      displayItem: displayItem,
      onChanged: onChanged,
      textColor: textColor,
    );
  }

  @override
  _CustomDropdownButtonState<T> createState() =>
      _CustomDropdownButtonState<T>();
}

class _CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButton<T>(
      underline: SizedBox(),
      value: widget.value,
      onChanged: widget.onChanged,
      items: widget.items.map((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(
            widget.displayItem!(item),
            style: TextStyle(
              color: widget.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList(),
    );
  }
}
