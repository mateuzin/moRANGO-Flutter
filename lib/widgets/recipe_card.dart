import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 200,
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "5.0 *",
                      style: TextStyle(
                          color: Color.fromARGB(153, 241, 105, 105),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("40~50 *",
                        style: TextStyle(
                            color: Color.fromARGB(153, 241, 105, 105),
                            fontSize: 14,
                            fontWeight: FontWeight.bold))
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
