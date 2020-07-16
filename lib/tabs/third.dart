import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.airline_seat_flat,
              size: 160.0,
              color: Colors.black,
            ),
            Text("Third Tab")
          ],
        ),
      ),
    );
  }
}
