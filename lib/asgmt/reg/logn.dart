import 'package:flutter/material.dart';

import 'package:flutter_application_1/asgmt/reg/reg.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home: Log(),
  ));
}

class Log extends StatelessWidget {
  Log({Key? key}) : super(key: key);
  final _vlkey = GlobalKey<FormState>();

  void _savekey() {
    final isvalid = _vlkey.currentState!.validate();
    if (!isvalid) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
      ),
      body: Form(
        key: _vlkey,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO9nC9pzEf37ejs2Wy05FLo7nze6z0O_LxlxfsH9-QvZD9V70weUVVfTCbuQqjkHAtuwc&usqp=CAU"),
                  fit: BoxFit.fitWidth,
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Login",
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: 'enter username/email',
                          labelText: 'UserName/Email',
                        ),
                        validator: (text) {
                          if (text == null ||
                              !(text.contains('@')) ||
                              text.isEmpty) {
                            return "enter a valid username/email";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: const InputDecoration(
                          label: Text('Password'),
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
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
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => regtn()));
                    },
                    child: const Text("Sign In")),
                Center(
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      _savekey();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
