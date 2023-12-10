// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import '../../../constants/dimentions.dart';

class shoppingFilters extends StatefulWidget {
  const shoppingFilters({
    super.key,
  });

  @override
  State<shoppingFilters> createState() => _shoppingFiltersState();
}

class _shoppingFiltersState extends State<shoppingFilters> {
  RangeValues _currentRangeValues = const RangeValues(0, 3500);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimentions.containerHeight(context, 500),
      width: Dimentions.containerWidth(context, 375),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('Price Range'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "K ${_currentRangeValues.start.round()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "K ${_currentRangeValues.end.round()}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            RangeSlider(
              activeColor: Colors.red[700],
              values: _currentRangeValues,
              max: 5000,
              min: 0,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            const Text('Colors'),
            Expanded(
              child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //childAspectRatio: 1,
                  mainAxisExtent: 50,
                  crossAxisCount: 5,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  // Define a list of colors
                  List<Color> colors = [
                    Colors.red,
                    Colors.blue,
                    Colors.green,
                    Colors.orange,
                    Colors.purple,
                  ];

                  // Use the index to select a color from the list
                  Color itemColor = colors[index % colors.length];
                  return Container(
                      width: Dimentions.containerWidth(context, 44),
                      decoration: BoxDecoration(
                        color: itemColor,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
