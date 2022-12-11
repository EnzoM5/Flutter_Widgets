import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //para a classe HomePage se tornar um widget, é preciso que ela extenda "StatelessWidget", passando assim a possuir um conteúdo estático (imutável).
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Menu',
          style: TextStyle(
            fontSize: 28,
          ),
        )),
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          minimumSize: Size(200, 100),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Page2()));
        },
        child: const Text(
          'Ver Passagens',
          style: TextStyle(fontSize: 36),
        ),
      )),
    );
  }
}

class Page2 extends StatefulWidget {
  @override
  _Page2 createState() => _Page2();
}

class _Page2 extends State<Page2> {
  bool checkValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Passagens',
            style: TextStyle(
              fontSize: 28,
            ),
          )),
        ),
        body: Center(
            child: Container(
                width: 400,
                height: 700,
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        minimumSize: Size(200, 100),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3()));
                      },
                      child: const Text(
                        'Comprar',
                        style: TextStyle(fontSize: 36),
                      ),
                    )
                  ],
                ))));
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Text("Tudo Certo, você comprou uma passagem para o Rio!")));
  }
}
