import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2
            ),
           borderRadius: BorderRadius.circular(10)
          ) ,
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
                  children: const [
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                      BorderRadius.all(Radius.circular(20)),                              
                          ),
                          hintText: 'enter username',
                          labelText: 'UserName',
                        
                          ),
                      

                    ),
                    SizedBox(height: 10,),
                     TextField(
                             
                              obscureText: true,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                
                                label: Text('Password'),
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                              ),
                            ),
                  ],
                ),
              ),
                  
              Center(
                child: ElevatedButton(
                 child: const Text('Login'),
                  onPressed: () {  },
                 
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}