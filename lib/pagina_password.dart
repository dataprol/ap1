import 'package:flutter/material.dart';
import 'pagina_inicial.dart';

class PaginaPassword extends StatefulWidget {
  @override
  PaginaPasswordState createState() {
    return PaginaPasswordState();
  }
}

class PaginaPasswordState extends State<PaginaPassword> {
  get border => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.lightBlue[600],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ulbra.png',
                  fit: BoxFit.contain,
                  height: 35,
                )
              ],
            ),
            iconTheme: const IconThemeData(color: Colors.black),
          )),
      body: ListView(
        padding: const EdgeInsets.all(35),
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/aula.png',
                fit: BoxFit.contain,
                height: 100,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Text(
                      "Luiz Carlos",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Informe sua senha, para concluir o acesso.",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          width: 4.0, color: Color.fromARGB(255, 0, 119, 255))),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(
                          width: 4.0, color: Color.fromARGB(255, 0, 119, 255))),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "12345678",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Senha",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: Icon(Icons.password, color: Colors.grey[400]),
                    focusColor: Colors.grey[300],
                    labelText: "Digite sua senha",
                    labelStyle: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                width: null,
                height: 50,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Text(
                        "Acessar",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaInicial()));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
