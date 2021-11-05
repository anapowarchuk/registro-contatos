import 'package:flutter/material.dart';
import 'package:novoapp/Contato.dart';

class TelaAdicionaContato extends StatefulWidget {
  const TelaAdicionaContato({Key? key}) : super(key: key);

  @override
  _TelaAdicionaContato createState() => _TelaAdicionaContato();
}

class _TelaAdicionaContato extends State<TelaAdicionaContato> {
  final _formKey = GlobalKey<FormState>();
  String? nome, email, sexo, telefone, groupSexo;

  late String _selectedRadio;

  String get selectedRadio => _selectedRadio;

  set setSelectedRadio(String selectedRadio) {
    _selectedRadio = selectedRadio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Contato"),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),

                hintText: 'Digite seu nome completo',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Nome*',

                labelStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.person_outline, color: Colors.deepPurple),
                //fillColor: Colors.white,
                //filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Dado obrigatório.';
                }
                return null;
              },
              onChanged: (value) => nome = value,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),

                hintText: 'Digite seu e-mail',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'E-mail*',

                labelStyle: TextStyle(color: Colors.grey),
                icon: Icon(Icons.email_outlined, color: Colors.deepPurple),
                //fillColor: Colors.white,
                //filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Dado obrigatório.';
                }
                return null;
              },
              onChanged: (value) => email = value,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),

                hintText: 'Digite seu telefone',
                hintStyle: TextStyle(color: Colors.grey),

                labelText: 'Telefone*',
                labelStyle: TextStyle(color: Colors.grey),

                icon: Icon(Icons.phone_outlined, color: Colors.deepPurple),
                //fillColor: Colors.white,
                //filled: true,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Dado obrigatório.';
                }
                return null;
              },
              onChanged: (value) => telefone = value,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintText: 'Digite seu sexo',
                hintStyle: TextStyle(color: Colors.grey),
                labelText: 'Sexo*',
                labelStyle: TextStyle(color: Colors.grey),
                icon:
                    Icon(Icons.account_box_outlined, color: Colors.deepPurple),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Dado obrigatório.';
                }
                return null;
              },
              onChanged: (value) => telefone = value,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                  onPressed: () {
                    Contato novoContato = Contato(
                        nome: nome ?? "nome padrao",
                        email: email ?? "dell@dell.com",
                        sexo: sexo ?? "xyz",
                        telefone: telefone ?? "51 33203501");
                    Navigator.pop(context, novoContato);
                  },
                  child: const Text('Salvar'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurple),
                    //padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                    //textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
