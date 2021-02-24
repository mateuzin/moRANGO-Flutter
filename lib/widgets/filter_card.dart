import 'package:flutter/material.dart';

class FilterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(1, 3, 6, 0),
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 2),
      width: 100,
      height: 30,
      decoration: BoxDecoration(
          color: Color.fromRGBO(110, 213, 161, 1),
          borderRadius: BorderRadius.all(Radius.circular(50.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VerticalDivider(
            color: Color.fromRGBO(110, 213, 161, 1),
            width: 3,
          ),
          Text(
            "Filtro 1",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalDivider(
            color: Color.fromRGBO(110, 213, 161, 1),
            width: 27,
          ),
          Icon(
            Icons.close,
            color: Colors.red,
            size: 16,
          )
        ],
      ),
    );
  }
}
