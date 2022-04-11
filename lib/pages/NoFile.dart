import 'package:flutter/material.dart';

class NoFilePage extends StatefulWidget {
  const NoFilePage({Key? key}) : super(key: key);

  @override
  State<NoFilePage> createState() => _NoFilePageState();
}

class _NoFilePageState extends State<NoFilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Nenhuma dado encontrado",
                style: Theme.of(context).textTheme.headline5,
              ),
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                "images/file.png",
                width: 300,
                height: 300,
              ),
              const Spacer(),
              const Text(
                "Não foi possível localizar nenhum dado cadastrado",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        )),
      ],
    ));
  }
}
