import 'package:flutter/material.dart';
import 'package:teste_pages/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
//        backgroundColor: Colors.transparent,
        backgroundColor: const Color(0x44000000),
        elevation: 0,
        title: const Text("Página Inicial"),
      ),
      body: const Center(child: Text("Content")),
    );
  }
}
