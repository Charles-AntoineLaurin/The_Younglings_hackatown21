import 'package:flutter/material.dart';
import 'package:flutter_workshop/models/champs.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChampFeed extends StatefulWidget {
  ChampFeed([Key key]) : super(key: key);

  @override
  _ChampFeedState createState() => _ChampFeedState(); 
}

class _ChampFeedState extends State<ChampFeed>{
  var url = '';
  List<Champ> chmps = [];

  _getChamps(){
    http.get(url).then((response)){
      setState(());
      Iterable list = json.decode(response.body);
      champs = list.map((article)=> Champs.fromJson(article))
    }
  }
  @override
  initState(){
    super.initState();
    _getChamps();
  }

  @override 
  Widget build(BuildContext context){
    return 
  }
}