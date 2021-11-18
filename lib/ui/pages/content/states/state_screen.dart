import 'package:flutter/material.dart';
import 'widgets/state_card.dart';
class StateScreen extends StatefulWidget {
  StateScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<StateScreen> {
  final item = List<String>.generate(20,(i)=>"item $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
        return StateCard(
          title: 'Iony Houst', 
          content: 'Lorem ipsum dolor sit amet.', 
          picUrl:  'https://uifaces.co/our-content/donated/gPZwCbdS.jpg', 
          onChat: () => {}
        );
      },
    );
  }
}