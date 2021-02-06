import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage([Key key]) : super(key: key);

  @override
  HomePageState createState() => HomePageState(); 
}

class HomePageState extends State<HomePage>{
  @override 
  Widget build(BuildContext context){
    /* Si l'usager clique sur une photo */ {
      Navigator.of(context).push(MaterialPageRoute(builder: (contet) => /*La page de photos*/),);
    }



    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              Image.asset(
                'IMAGE DE L\'ID DU CHAMPS', 
                height: 75,
                ), 
              ]
            ),
            Row(children: [
              Text("NUMERO DU CHAMPS (ID)"),
            ],
          ),
          ],
        ), 
      )
    );
  }
}