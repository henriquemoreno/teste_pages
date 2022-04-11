import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

enum Error { Bug, Suggestion, Others }

class _FeedbackPageState extends State<FeedbackPage> {
  double? _ratingValue;
  Error? _error = Error.Bug;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          onPressed: () => {Navigator.of(context).pop()},
          color: Colors.black,
        ),
        middle: const Text(
          "Feedback Form",
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
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(188, 189, 189, 189),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15, bottom: 0),
                    child: Text(
                      "Send us your feedback!",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5, bottom: 0),
                    child: Text("Do you have a suggestion or found a bug?"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 0, bottom: 0),
                    child: Text("Let us know by fill this form"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Row(
                children: const [
                  Text(
                    "How was your experience?",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: RatingBar.builder(
                      initialRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        switch (index) {
                          case 0:
                            return const Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                            );
                          case 1:
                            return const Icon(
                              Icons.sentiment_dissatisfied,
                              color: Colors.redAccent,
                            );
                          case 2:
                            return const Icon(
                              Icons.sentiment_neutral,
                              color: Colors.amber,
                            );
                          case 3:
                            return const Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.lightGreen,
                            );
                          case 4:
                            return const Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                          default:
                            return widget;
                        }
                      },
                      onRatingUpdate: (value) {
                        setState(() {
                          _ratingValue = value;
                        });
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextFormField(
                minLines:
                    6, // any number you need (It works as the rows for the textarea)
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  //   filled: true,
                  //   fillColor: Color.fromARGB(188, 189, 189, 189),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                  labelText: 'Describe your experience',
                  labelStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: const Text('Bug'),
                      leading: Radio<Error>(
                        value: Error.Bug,
                        groupValue: _error,
                        onChanged: (Error? value) {
                          setState(() {
                            _error = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: const Text('Suggestion'),
                      leading: Radio<Error>(
                        value: Error.Suggestion,
                        groupValue: _error,
                        onChanged: (Error? value) {
                          setState(() {
                            _error = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: const Text('Others'),
                      leading: Radio<Error>(
                        value: Error.Others,
                        groupValue: _error,
                        onChanged: (Error? value) {
                          setState(() {
                            _error = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 30),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(color: Colors.indigoAccent[700]),
              child: TextButton(
                onPressed: () async {},
                child: const Text(
                  'Send Feedback',
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
