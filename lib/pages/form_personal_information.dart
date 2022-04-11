import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

enum Gender { male, female }

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController date = TextEditingController();
  Gender? _gender = Gender.male;

  Future _selectDate() async {
    final df = DateFormat('dd/MM/yyyy');
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (picked != null) {
      var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
      var inputDate = inputFormat.parse(picked.toString());
      var outputFormat = DateFormat('dd/MM/yyyy');
      outputFormat.format(inputDate);
      setState(() => date.text = outputFormat.format(inputDate));
    }
  }

  void _showIOS_DatePicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                children: [
                  Container(
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime.now(),
                        onDateTimeChanged: (val) {
                          if (val != null) {
                            var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
                            var inputDate = inputFormat.parse(val.toString());
                            var outputFormat = DateFormat('dd/MM/yyyy');
                            outputFormat.format(inputDate);
                            setState(() =>
                                date.text = outputFormat.format(inputDate));
                          }
                        }),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => {Navigator.of(context).pop()},
          color: Colors.black,
        ),
        middle: const Text(
          "Personal Information",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Row(
                children: const [
                  Text(
                    "Personal",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
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
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
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
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextFormField(
                controller: date,
                readOnly: true,
                validator: (value) {},
                onChanged: (value) {},
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.date_range),
                  border: OutlineInputBorder(),
                  labelText: 'Date',
                ),
                onTap: () async {
                  _showIOS_DatePicker();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Row(
                children: <Widget>[
                  const Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ListTile(
                      title: const Text('Male'),
                      leading: Radio<Gender>(
                        value: Gender.male,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ListTile(
                      title: const Text('Female'),
                      leading: Radio<Gender>(
                        value: Gender.female,
                        groupValue: _gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Row(
                children: const [
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
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
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                ),
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
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  labelText: 'Contact',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Row(
                children: const [
                  Text(
                    "Other Information",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
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
                  prefixIcon: Icon(Icons.badge_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'Nick Name',
                ),
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
                  prefixIcon: Icon(Icons.interests_outlined),
                  border: OutlineInputBorder(),
                  labelText: 'Interest',
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
          ]),
        ),
      )),
    );
  }
}
