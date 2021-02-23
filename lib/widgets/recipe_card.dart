import 'package:flutter/material.dart';
import 'package:morango_app/mo_rango_icons.dart';

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 190,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Image.asset(
              "images/Bolo-de-Chocolate-Cremoso.jpg",
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                SizedBox(
                  width: 9,
                ),
                Expanded(
                    child: Text('Bolo de chocolate cremoso',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: Color.fromARGB(153, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
                SizedBox(
                  width: 9,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "5.0",
                          style: TextStyle(
                              color: Color.fromARGB(153, 241, 105, 105),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Icon(MoRango.iconmorango,
                            size: 16,
                            color: Color.fromARGB(153, 241, 105, 105)),
                        Padding(padding: EdgeInsets.only(left: 3)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                    ),
                    Row(
                      children: [
                        Text("40~50",
                            style: TextStyle(
                                color: Color.fromARGB(153, 241, 105, 105),
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Icon(MoRango.iconclock,
                            size: 16,
                            color: Color.fromARGB(153, 241, 105, 105)),
                        Padding(padding: EdgeInsets.only(left: 5)),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
