import 'package:flutter/material.dart';

class RecommendsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RecommendsScreen();
  }
}
class _RecommendsScreen extends State<RecommendsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
        child: Column(
          children: [
            Text('soon')
          ],
        ),
    ),
    );
  }

}
/*void main(){
  runApp(RecommendsScreen());
}*/