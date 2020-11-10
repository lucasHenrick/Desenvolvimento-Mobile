import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorCodigo = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();
  final TextEditingController _controladorGerenteProjeto =
      TextEditingController();
  final TextEditingController _controladorDataSP1 = TextEditingController();
  final TextEditingController _controladorDataSP2 = TextEditingController();
  final TextEditingController _controladorDataFim = TextEditingController();
  final TextEditingController _controladorDataInicio = TextEditingController();
  final TextEditingController _controladorDataReview = TextEditingController();
  final TextEditingController _controladorDataRetro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando de Projeto'),
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
                controller: _controladorCodigo,
                decoration: InputDecoration(labelText: 'Codigo'),
              ),
              TextField(
                controller: _controladorDescricao,
                decoration: InputDecoration(labelText: 'Descrição'),
              ),
              TextField(
                controller: _controladorGerenteProjeto,
                decoration: InputDecoration(labelText: 'Gerente de Projeto'),
              ),
              TextField(
                controller: _controladorDataSP1,
                decoration: InputDecoration(labelText: 'Data SP1'),
              ),
              TextField(
                controller: _controladorDataSP2,
                decoration: InputDecoration(labelText: 'Data SP2'),
              ),
              TextField(
                controller: _controladorDataInicio,
                decoration: InputDecoration(labelText: 'Data de Inicio'),
              ),
              TextField(
                controller: _controladorDataFim,
                decoration: InputDecoration(labelText: 'Data Fim'),
              ),
              TextField(
                controller: _controladorDataReview,
                decoration: InputDecoration(labelText: 'Data Review'),
              ),
              TextField(
                controller: _controladorDataRetro,
                decoration: InputDecoration(labelText: 'Data Retrospectiva'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Cadastrar'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final String codigo = _controladorCodigo.text;
                    final String descricao = _controladorDescricao.text;
                    final String gerenteProjeto =
                        _controladorGerenteProjeto.text;
                    final String dataSP1 = _controladorDataSP1.text;
                    final String dataSP2 = _controladorDataSP2.text;
                    final String dataInicio = _controladorDataInicio.text;
                    final String dataFim = _controladorDataFim.text;
                    final String dataReview = _controladorDataReview.text;
                    final String dataRetro = _controladorDataRetro.text;

                    final Projeto usuarioNovo = Projeto(
                        nome,
                        codigo,
                        descricao,
                        gerenteProjeto,
                        dataSP1,
                        dataSP2,
                        dataInicio,
                        dataFim,
                        dataReview,
                        dataRetro);
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

class Projeto {
  final String nome;
  final String codigo;
  final String descricao;
  final String gerenteProjetos;
  final String dataSP1;
  final String dataSP2;
  final String dataInicio;
  final String dataFim;
  final String dataReview;
  final String dataRetro;

  Projeto(
    this.nome,
    this.codigo,
    this.descricao,
    this.gerenteProjetos,
    this.dataSP1,
    this.dataSP2,
    this.dataInicio,
    this.dataFim,
    this.dataReview,
    this.dataRetro,
  );

  @override
  String toString() {
    return 'Produto{nome: $nome, codigo: $codigo, gerenteProjetos: $gerenteProjetos,dataSP1: $dataSP1, dataSP2: $dataSP2,dataInicio: $dataInicio,dataFim: $dataFim,dataReview: $dataReview,dataRetro: $dataRetro, }';
  }
}
