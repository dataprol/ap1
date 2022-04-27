import 'package:flutter/material.dart';

class Apresentacao extends StatefulWidget {
  @override
  ApresentacaoState createState() {
    return ApresentacaoState();
  }
}

class ApresentacaoState extends State<Apresentacao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(60),
                child: AppBar(
                    backgroundColor: Colors.white,
                    title: Container(
                        child: Column(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            Column(
                              children: [
                                Text(
                                  'Desenvolvimento de Sistemas Móveis',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                Padding(padding: EdgeInsets.only(top: 5)),
                                Text(
                                  'Disciplina: 152103 Turma: 0077-A - 31N',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ])
                    ])))),
            body: Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(30),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'Informação - Datas Importantes\n\n' +
                          'Descrição:\n' +
                          'AP1 - 12/04\n' +
                          'AP2 - 24/05\n' +
                          'AS - 05/07\n' +
                          'AF - 19/07\n\n' +
                          'Datas Atividades Semi presenciais\n' +
                          '----\n' +
                          '26/03, 09/04, 23/04, 28/05 ,18/06\n\n' +
                          'Eu sou o professor Ramon e estarei com vocês nesta jornada.',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 95,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Row(children: [
                                Icon(Icons.arrow_back),
                                Text('Voltar'),
                              ]))),
                    )
                  ],
                ))));
  }
}
