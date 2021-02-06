import 'package:flutter/material.dart';

class ChampPage extends StatefulWidget {
  ChampPage([Key key]) : super(key: key);

  @override
  ChampPageState createState() => ChampPageState(); 
}

class ChampPageState extends State<ChampPage>{
  @override 
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: CustomScrollView(
              slivers: [
                ChampFeedHeader(),
                SliverPadding(
                  padding: EdgeInsets.only(bottom: 50),
                  sliver: ChampFeed(),
                ),
              ],
            ))
          ],
            )
      ),
    );
  }
}