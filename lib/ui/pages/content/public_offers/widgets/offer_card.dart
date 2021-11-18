import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:red_egresados/ui/widgets/card.dart';


class OfferCard extends StatelessWidget {
  // Este widget permite mostrar los detalles de una oferta de trabajo.
  // Sigue los siguientes pasos con ayuda del instructor.
  final String title, content, arch, label;
  final int payment;
  final VoidCallback onCopy, onAply;
  // 1. Define las variables que van a ser utilizadas por el widget
  // ejemplo:  final String finalTitle;

  // 2. Implementa el constructor del widget
  const OfferCard({Key? key,
  required this.title,
  required this.content,
  required this.arch,
  required this.label,
  required this.payment,
  required this.onAply,
  required this.onCopy
  }): super(key: key);
  

  // 3. Construye el widget utilizando el metodo build@override
  // Widget build(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    return AppCard(
      title: title,
      content: Text(content, style: Theme.of(context).textTheme.bodyText1
      ),
      topRightWidget: IconButton(
        icon: Icon(Icons.copy_all_outlined, color: Colors.pink),
        onPressed: (){
          Clipboard.setData(ClipboardData(text: content));
        },
        ),
        extraContent: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(4.0),
                child: Icon(Icons.architecture, 
                color: primaryColor),
                ),
                Text(arch, 
                style: Theme.of(context).textTheme.caption),
                const Spacer(),
                Padding(padding: const EdgeInsets.all(4.0), 
                child: Icon(Icons.developer_mode_outlined,
                color: primaryColor
                ),
                ),
                Text( 
                  label,
                  style: Theme.of(context).textTheme.caption,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.payments_outlined,
                    color: primaryColor,
                  ),
                ),
                Text(
                  '\$$payment',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),   
      );
  }
}
