import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_pages/pages/NoFile.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
          Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.lightBlue),
              child: SvgPicture.asset("svgs/payment.svg")),
          const Spacer(),
          const Text(
            "Não foi possível localizar nenhum dado cadastrado",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          const Spacer(
            flex: 2,
          ),
          TextButton(
              onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NoFilePage()))
                  },
              child: const Text("Click Aqui"))
        ],
      ),
    )));
  }
}
