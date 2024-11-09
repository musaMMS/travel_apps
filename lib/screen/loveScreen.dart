import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<Love> lovelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Flights'),
      ),
      body: Center(
        child: Text('Your favorite flights will appear here.'),
      ),
    );
  }
  void _addnewLove(Love love) {
    lovelist.add(love);

    if (mounted) {
      setState(() {

      });
}
