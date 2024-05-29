import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );

    var mySecondaryStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fee
          Column(
            children: [
              Text(
                'Rp 10.000',
                style: myPrimaryStyle,
              ),
              Text(
                'Delivery Fee',
                style: mySecondaryStyle,
              )
            ],
          ),

          // delivery time
          Column(
            children: [
              Text(
                '30 - 45 min',
                style: myPrimaryStyle,
              ),
              Text(
                'Delivery Time',
                style: mySecondaryStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
