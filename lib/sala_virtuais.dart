import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'apresenta.dart';

class SalasVirtuais extends StatefulWidget {
  @override
  SalasVirtuaisState createState() {
    return SalasVirtuaisState();
  }
}

class SalasVirtuaisState extends State<SalasVirtuais> {
  String dropdownvalue = '2021/2';
  var itens = ['2021/2', '2021/1', '2020/2'];
  String dropdownvalue2 = 'Desenvolvimento de Sistemas Móveis';
  var itens2 = ['Desenvolvimento de Sistemas Móveis'];

  Widget _buildAula() {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                alignment: Alignment.topLeft,
                height: 150,
                width: null,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                    color: Colors.red[900]),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Desenvolvimento de Sistemas Móveis',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Professor:',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Ramon dos Santos Lummertz',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Container(
            child: Align(
              child: Container(
                alignment: Alignment.topLeft,
                height: 500,
                width: null,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white),
                child: ListView(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                        child: ExpansionTile(
                          children: [
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Apresentacao()));
                              },
                              title: Text(
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
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                'Link - Aula 01',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                'Link - Plano de Aprendizagem',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                'Link - TDE Aula 01',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                'Link - Gravação das aulas',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                            ListTile(
                              title: Text(
                                'Sala de interação - Postar o Protótipo',
                              ),
                            )
                          ],
                          title: Row(children: [
                            Expanded(
                              child: Text(
                                'Aula 01 - Vamos falar de Mobilidade!',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                          collapsedBackgroundColor: Colors.grey[200],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(60.0),
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
                              },
                            ),
                            Column(
                              children: [
                                Text(
                                  'Desenvolvimento de Sistemas Móvies',
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
                    ]),
                  ),
                  iconTheme: IconThemeData(color: Colors.black),
                )),
            body: Container(
              padding: EdgeInsets.all(30),
              child: ListView(
                children: [
                  Text(
                    'Roteiro de aprendizagem',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text('Período:'),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    value: dropdownvalue,
                    items: itens.map((String itens) {
                      return DropdownMenuItem(
                        value: itens,
                        child: Text(itens),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Turma:'),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    value: dropdownvalue2,
                    items: itens2.map((String itens2) {
                      return DropdownMenuItem(
                          value: itens2,
                          child: Expanded(
                              child: Text(
                            itens2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          )));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  _buildAula(),
                ],
              ),
            )));
  }
}
