import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  final Color cor;
  const CicloStateful({super.key, required this.cor});

  @override
  State<CicloStateful> createState() => _CicloStatefulState();
}

class _CicloStatefulState extends State<CicloStateful> {
  @override
  void initState() {
    super.initState();
    print('initState: Widget foi inserido na árvore');
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('didChangeDependecies: Widget recebeu dependências / mudanças no context da árvore');
  }

  @override
  void didUpdateWidget(CicloStateful oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: Propriedades mudaram');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose: Widget removido da árvore');
  }

  @override
  Widget build(BuildContext context) {
    print('build: Widget construido / reconstruido');
    return Container(
      height: 200,
      width: 200,
      color: widget.cor,
      child: Center(
        child: Text('Cor atual', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}