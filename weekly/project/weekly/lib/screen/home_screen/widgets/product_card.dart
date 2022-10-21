import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../model/stationeries.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.index}) : super(key: key);
  final oCcy = NumberFormat.currency(
      locale: 'id', customPattern: '\u00a4 #,### ', decimalDigits: 0);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
                  stationeries[index].imageUrl)),
          Container(
            color: Colors.brown.withOpacity(0.3),
            height: 50.0,
            width: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.end,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    stationeries[index].name,
                    style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight:
                        FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                      oCcy
                          .format(
                          stationeries[index]
                              .price)
                          .toString(),
                      style: const TextStyle(
                          fontSize: 13.0,
                          fontWeight:
                          FontWeight.w700)),
                  const SizedBox(
                    height: 5.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
