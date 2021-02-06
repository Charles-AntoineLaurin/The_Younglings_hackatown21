import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class ChampFeedHeader extends StatefulWidget {
  ChampFeedHeader([Key key]) : super(key: key);

  @override
  _ChampFeedHeaderState createState() => _ChampFeedHeaderState(); 
}

class _ChampFeedHeaderState extends State<ChampFeedHeader>{
  @override 
  Widget build(BuildContext context){
    return SliverPersistentHeader(
      delegate: _SliverMainPageHeaderDelegate(
        minHeight: 150, 
        maxHeight: 200, 
        child: Column(children: [
          Row(
            children: [
              Text('Vos champs')
              ])
            Row(
              children: [
                
              ],
            )
        ])
      );
  }
}

class _SliverMainPageHeaderDelegate extends SliverPersistentHeaderDelegate{
  _SliverMainPageHeaderDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final widget child;

  @override 
  double get minExtent => minHeight;

  @override 
  double get maxExtent => maxHeight;

  @override 
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent){
    return new Sizedbox.expand(child : child,);
  }

  @override
  bool shouldRebuild(_SliverMainPageHeaderDelegate oldDelegate){
    return maxHeight != oldDelegate.maxHeight|| 
    minHeight != oldDelegate.minHeight || 
    child != oldDelegate.child;
  }
}