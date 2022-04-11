import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => {Navigator.of(context).pop()},
          color: Colors.black,
        ),
        middle: const Text(
          "Address Form",
          style: TextStyle(fontSize: 19),
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () => {},
      //   ),
      //   title: const Text(
      //     "Address Form",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
                child: Column(
              children: <Widget>[
                const Divider(
                  color: Colors.black,
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        border: OutlineInputBorder(),
                        labelText: 'Address 1',
                        hintText: 'Rua: Dos Bobos nº 0'),
                  ),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value) {},
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.add_location_alt),
                        border: OutlineInputBorder(),
                        labelText: 'Address 2',
                        hintText: 'Rua: Dos Bobos nº 0'),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 195,
                      margin: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        validator: (value) {},
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.house),
                            border: OutlineInputBorder(),
                            labelText: 'House'),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      child: TextFormField(
                        validator: (value) {},
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.pin),
                            border: OutlineInputBorder(),
                            labelText: 'PIN Code'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(),
                      labelText: 'City',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                      labelText: 'Contact',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    validator: (value) {},
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.info_outline),
                      border: OutlineInputBorder(),
                      labelText: 'Delivery note',
                    ),
                  ),
                ),
                const Divider(height: 30),
                Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(color: Colors.indigoAccent[700]),
                  child: TextButton(
                    onPressed: () async {},
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
