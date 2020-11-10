import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorSobrenome = TextEditingController();
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();
  final TextEditingController _controladorData = TextEditingController();
  final TextEditingController _controladorUsuario = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando Usuario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextField(
                controller: _controladorSobrenome,
                decoration: InputDecoration(labelText: 'Sobrenome'),
              ),
              TextField(
                controller: _controladorEmail,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _controladorSenha,
                decoration: InputDecoration(labelText: 'Senha'),
              ),
              TextField(
                controller: _controladorData,
                decoration: InputDecoration(labelText: 'Data'),
              ),
              TextField(
                controller: _controladorUsuario,
                decoration: InputDecoration(labelText: 'Usuario'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final String sobrenome = _controladorSobrenome.text;
                    final String email = _controladorEmail.text;
                    final String senha = _controladorSenha.text;
                    final String username = _controladorData.text;
                    final String data = _controladorUsuario.text;

                    final Usuario usuarioNovo =
                        Usuario(nome, sobrenome, email, senha, username, data);
                    print(usuarioNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Usuario {
  final String nome;
  final String sobrenome;
  final String email;
  final String senha;
  final String username;
  final String data;

  Usuario(this.nome, this.sobrenome, this.email, this.senha, this.username,
      this.data);

  @override
  String toString() {
    return 'Produto{nome: $nome, sobrenome: $sobrenome, email: $email,username: $username, data: $data }';
  }
}
