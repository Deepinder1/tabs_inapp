import 'package:flutter/material.dart';

//credit to nishant
class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          //centering the children
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 160.0,
              color: Colors.red,
            ),
            Text("First Tab")
          ],
        ),
      ),
    );
  }
}
