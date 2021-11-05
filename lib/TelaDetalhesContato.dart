import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novoapp/Contato.dart';
import 'package:novoapp/TelaListaContatos.dart';

class TelaDetalhesContato extends StatelessWidget {
  TelaDetalhesContato({Key? key, required this.contato}) : super(key: key);

  Contato contato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe do Contato'),
        backgroundColor: Colors.deepPurple[50],
      ),
      body: ListView(children: [
        ListTile(
          leading: Icon(Icons.person_outline, color: Colors.deepPurple),
          title: Text(contato.nome),
        ),
        ListTile(
          leading: Icon(Icons.email_outlined, color: Colors.deepPurple),
          title: Text(contato.email),
        ),
        ListTile(
          leading: Icon(Icons.phone, color: Colors.deepPurple),
          title: Text(contato.telefone),
        ),
        ListTile(
          leading: contato.sexo == 'Masculino'
              ? Icon(Icons.male_outlined, color: Colors.deepPurple)
              : Icon(Icons.female_outlined, color: Colors.deepPurple),
          title: Text(contato.sexo),
        ),
      ]),
    );
  }
}
