import 'package:flutter/material.dart';
import 'pagina_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      "Seja Bem-Vindo!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Faça login, para acesso ao sistema.",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Usuário",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon:
                        Icon(Icons.person_outline, color: Colors.grey[400]),
                    focusColor: Colors.grey[300],
                    labelText: "Digite seu email @rede",
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
                        "Próximo",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaginaPassword()));
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
