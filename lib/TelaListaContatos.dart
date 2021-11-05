import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novoapp/TelaDetalhesContato.dart';
import 'package:novoapp/TelaAdicionaContato.dart';

import 'Contato.dart';

class TelaListaContatos extends StatefulWidget {
  TelaListaContatos({Key? key, required this.contatos}) : super(key: key);

  List<Contato> contatos;
  @override
  State<TelaListaContatos> createState() => _TelaListaContatos();
}

class _TelaListaContatos extends State<TelaListaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Contatos"),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: widget.contatos[index].sexo == 'Masculino'
                  ? Icon(Icons.male_outlined)
                  : Icon(Icons.female_outlined),
              title: Text(widget.contatos[index].nome),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TelaDetalhesContato(contato: widget.contatos[index]),
                  ),
                );
              },
              trailing: GestureDetector(
                onTap: () => setState(() => widget.contatos.removeAt(index)),
                child: Icon(Icons.delete_outline_outlined),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var resultado = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TelaAdicionaContato(),
            ),
          );
          if (resultado != null) {
            setState(() {
              widget.contatos.add(resultado);
            });
          }
        },
        tooltip: 'Novo Contato',
        child: const Icon(Icons.add_circle_outlined),
        backgroundColor: Colors.deepPurple[400],
      ),
    );
  }
}
