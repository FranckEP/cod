import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class public_offers_screen extends StatefulWidget {
  public_offers_screen
  ({Key? key}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<public_offers_screen>{
  final item = List<String>.generate(20,(i)=>"item $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: item.length, itemBuilder: (context, index){
      return OfferCard(title: 'Desarrollador Backend JS', content: 'Estamos buscando un desarrollador backend independiente de NodeJS para trabajar en el backend de una aplicación nativa de Android. Alguien que pueda ayudarnos en la creación de una aplicación móvil de redes sociales basada en video desde cero. Este sería un puesto remunerado con la opción de trabajar desde casa. Una oportunidad de aprender y desarrollar algo desde cero.', 
      arch: 'Android', 
      label: 'Experto', 
      payment: 3000000, 
      onAply: () => {}, 
      onCopy: () => {}
      );
    });
  }
}