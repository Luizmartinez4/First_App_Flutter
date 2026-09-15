import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de layout'),),
      body: ListView(padding: EdgeInsets.all(16.0), children: [
        TituloSecao(titulo: 'Padding'),

        Container(
          color: Colors.amberAccent,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Texto com padding interno de 20px'),
          ),
        ),

        Divider(),

        TituloSecao(titulo: 'Padding'),
        
        Container(
          height: 80,
          color: Colors.amberAccent,
          child:
            Align(alignment: Alignment.topLeft, child: Text('Texto alinhado ao topo e à esquerda')),
        ),

        Divider(),

        TituloSecao(titulo: 'Center'),
        
        Container(
          height: 80,
          color: Colors.amberAccent,
          child:
            Center(child: Text('Texto centralizado')),
        ),

        Divider(),

        TituloSecao(titulo: 'SizedBox'),
        
        Column(
          children: [
            Text('Texto acima do SizedBox'),
            SizedBox(height: 20),
            Text('Texto abaixo do SizedBox'),
          ],
        ),

        Divider(),

        TituloSecao(titulo: 'Expandex e Flexible (Column)'),

        Container (
          height: 200,
          color: Colors.amberAccent,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Center(child: Text('Expanded')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Text('Flexible (flex: 2)')),
                ),
              ),
            ],
          ),
        ),

        TituloSecao(titulo: 'Expandex e Flexible (em Column)'),

        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.red,
                child: Center(child: Text('Expanded')),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Center(child: Text('Flexible (flex: 2)')),
              ),
            ),
          ],
        )
      ])
    );
  }
}