import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful_parent.dart';
import 'package:new_project/screens/contador.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/screens/widgtes_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'Widgets de conteúdo',
      icone: Icons.text_fields,
      descricao: 'Exemplos de widgets básicos como textos, imagens, ícones e botões.',
      destino: WidgetsConteudo()
    ),
    CatalogoItem(
      titulo: 'Widgets de layout',
      icone: Icons.view_agenda,
      descricao: 'Exemplos/Demonstrações de Padding, Column, Flexible...',
      destino: WidgetsLayout()
    ),
    CatalogoItem(
      titulo: 'Ciclo de vida - Stateful',
      icone: Icons.sync,
      descricao: 'Entendendo o ciclo de vida de um StatefulWidget',
      destino: CicloStatefulParent()
    ),
    CatalogoItem(
      titulo: 'Contador - setState',
      icone: Icons.refresh,
      descricao: 'Exemplo decontador utilizando setState e gerenciamento de estado',
      destino: Contador()
    ),
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Catálogo de Widgets'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16),
          crossAxisSpacing: 16,
          childAspectRatio: 0.85,
          children: secoes.map((item) => 
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.destino)),
            child:
              Card(
                elevation: 4,
                child: Padding( padding:
                  EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Icon(
                        item.icone, size: 48, color: Colors.blue
                      ),
                      Text(item.titulo, 
                        textAlign: TextAlign.center, 
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      Text(item.descricao, 
                        textAlign: TextAlign.center, 
                        style: TextStyle(fontSize: 12, color: Colors.grey), 
                        maxLines: 3
                      ),
                    ],
                  )
                )
              ))
          ).toList(),
        )
      );
  }
}

class CatalogoItem{
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino
  });
}