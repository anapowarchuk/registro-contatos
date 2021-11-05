import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novoapp/TelaAdicionaContato.dart';
import 'package:novoapp/TelaListaContatos.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Contatos'),
        backgroundColor: Colors.purple[900],

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                   child: Text('Lista de Contatos'),
                    onPressed: () {
                     Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => TelaListaContatos(contatos: [],)),
                      );
                          // Navigate to second route when tapped.
                    },
                    style: ButtonStyle (
                      backgroundColor: MaterialStateProperty.all(Colors.deepPurple[600]),
                    )
                ),
                ElevatedButton(
                  child: Text('Novo Contato'),
                  onPressed: () {
                  Navigator.push(
                    context,
                     MaterialPageRoute(builder: (context) => TelaAdicionaContato()),
                  ); // Navigate to second route when tapped.
                  },
                  style: ButtonStyle (
                    backgroundColor: MaterialStateProperty.all(Colors.deepPurple[700]),
                  )
                ),
              ]
    
            )
          ],)

     
      ),
    );
  }
}
