import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Widgets de conteúdo'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: 
          [
            TituloSecao(titulo: 'Textos'),
          
            Text('Texto estilizado', style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            )),

            Text('Texto com estilo padrão', style: TextStyle(
              fontSize: 18
            )),
            
            Divider(),

            TituloSecao(titulo: 'Imagem'),
            
            Image.network('https://picsum.photos/id/237/200/300', height: 240),

            Divider(),

            TituloSecao(titulo: 'Ícone'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 32),
                Icon(Icons.star, color: Colors.amber, size: 32),
                Icon(Icons.settings, color: Colors.blue, size: 32),
              ],),

            Divider(),

            TituloSecao(titulo: 'Elevated Button'),

            ElevatedButton(
              onPressed: () {},
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Clique aqui', textAlign: TextAlign.left),
              ),
            ),
          ]
        ),
      );
  }
}