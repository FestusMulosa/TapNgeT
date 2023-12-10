import 'package:flutter/material.dart';

import '../../../constants/dimentions.dart';

class QuantitySelector extends StatefulWidget {
  QuantitySelector({
    required this.quantity,
    required this.maxQuantity,
    required this.minQuantity,
    Key? key,
  }) : super(key: key);
  int quantity;
  int maxQuantity;
  int minQuantity;
  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimentions.containerWidth(context, 75),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                if (widget.quantity > widget.minQuantity) {
                  setState(() {
                    widget.quantity--;
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Minimum quantity reached'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }
              },
              child: const Icon(Icons.remove_circle_outline)),
          SizedBox(width: Dimentions.containerWidth(context, 2)),
          Text(widget.quantity.toString()),
          SizedBox(width: Dimentions.containerWidth(context, 2)),
          GestureDetector(
            onTap: () {
              if (widget.quantity <= widget.maxQuantity) {
                setState(() {
                  widget.quantity++;
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Maximum quantity reached'),
                    duration: Duration(seconds: 1),
                  ),
                );
              }
            },
            child: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
    );
  }
}
