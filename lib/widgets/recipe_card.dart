import 'package:flutter/material.dart';
import 'package:morango_app/mo_rango_icons.dart';

class RecipeCard extends StatelessWidget {
  RecipeCard(
      {this.nomeReceita,
      this.minTempoPreparo,
      this.maxTempoPreparo,
      this.urlFoto});

  final String nomeReceita;
  final String minTempoPreparo;
  final String maxTempoPreparo;
  final String urlFoto;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/recipe');
      },
      child: SizedBox(
        height: 250,
        width: 190,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Image.network(
                urlFoto,
                fit: BoxFit.fill,
                // width: 400,
                // height: 100,
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
                      child: Text(nomeReceita,
                          overflow: TextOverflow.clip,
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
                          Text(minTempoPreparo+"~"+maxTempoPreparo,
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
      ),
    );
  }
}
