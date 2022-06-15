import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'logn.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.red),
    home: regtn(),
  ));
}

class regtn extends StatelessWidget {
  regtn({Key? key}) : super(key: key);
  final _regky = GlobalKey<FormState>();
  final passwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(88, 207, 206, 206),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Icon(Icons.account_box_outlined),
          Form(
            key: _regky,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(138, 158, 158, 158),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Registration",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: true,
                            decoration: const InputDecoration(
                              hintText: 'enter username',
                              labelText: 'UserName',
                              icon: Icon(Icons.person),
                            ),
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return "enter a username";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            autofocus: true,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.email),
                              hintText: 'enter email',
                              labelText: 'Email',
                            ),
                            validator: (text) {
                              if (!EmailValidator.validate(text!) ||
                                  text.isEmpty) {
                                return 'Enter a valid email ';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: passwd,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: const InputDecoration(
                              icon: Icon(Icons.lock),
                              label: Text('Password'),
                            ),
                            validator: (text) {
                              if (text == null ||
                                  (text.length <= 8) ||
                                  text.isEmpty) {
                                return "enter a valid password almost 8 characters";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: const InputDecoration(
                              icon: Icon(Icons.key),
                              label: Text('Confirm Password'),
                            ),
                            validator: (text) {
                              if (text == passwd ||
                                  text == null ||
                                  text.isEmpty) {
                                return "password are not matching ";
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 350,
                        height: 40,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30)))),
                          child: const Text('Register'),
                          onPressed: () {
                            final isvalid = _regky.currentState!.validate();
                            if (!isvalid) {
                              Fluttertoast.showToast(
                                  msg: "Registration failed",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM);
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Log()));
                            }
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already Register?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Log(),
                                  ));
                            },
                            child: const Text("Login"))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
