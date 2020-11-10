import 'package:cardapio/pages/Home.page.dart';
import 'package:cardapio/pages/signup.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top:80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: <Widget>[
             Container(
               height: 450,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                   new BoxShadow(
                     color: Colors.black12,
                     offset: new Offset(1, 2),
                     blurRadius: 5,
                     spreadRadius: 1,
                   )
                 ],
               ),
               child: Padding(
                 padding: EdgeInsets.only(left: 15, right: 15, top: 40),
                 child: Column(
                   children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Column(
                           children: <Widget>[
                             Text(
                                 "Bem Vindo,",
                                 style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.w500,
                                 )
                             ),
                             Text(
                               "Entre para continuar",
                               style: TextStyle(
                               ),
                             ),
                           ],
                         ),
                         FlatButton(
                           child: Text(
                               "Criar nova conta",
                           style: TextStyle(
                             color: Theme.of(context).primaryColor,
                            ),
                           ),
                           onPressed: (){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => SignupPage()
                             ),
                            );
                           }
                         ),
                       ],
                     ),
                     SizedBox(height: 50,),
                     TextFormField(
                       keyboardType: TextInputType.text,
                       decoration: InputDecoration(
                         labelText: "Email",
                         labelStyle: TextStyle(
                           color: Theme.of(context).primaryColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,
                         ),
                       ),
                       style: TextStyle(
                           fontSize: 20,
                       ),
                     ),
                     SizedBox(height: 10),
                     TextFormField(
                       keyboardType: TextInputType.emailAddress,
                       obscureText: true,
                       decoration: InputDecoration(
                         labelText: "Senha",
                         labelStyle: TextStyle(
                           color: Theme.of(context).primaryColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,
                         ),
                       ),
                       style: TextStyle(
                         fontSize: 20
                       ),
                     ),
                     Container(
                       height: 40,
                       alignment: Alignment.centerRight,
                       child: FlatButton(
                         child: Text(
                           "Esqueci minha senha",
                         style: TextStyle(
                           color: Theme.of(context).primaryColor,
                         ),
                       ),
                         onPressed: (){},
                       ),
                     ),
                     SizedBox(height: 20,),
                     Container(
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: Theme.of(context).primaryColor,
                         borderRadius: BorderRadius.all(Radius.circular(6)),
                       ),
                       child: FlatButton(
                         child: Text(
                           "Entrar",
                           style: TextStyle(
                             color: Colors.white,
                           ),
                         ),
                           onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => HomePage()
                               ),
                             );
                           }
                       ),
                     )

                   ],
                 ),
               )
             ),
             SizedBox(height: 10),
              Container(
               width: double.infinity,
               height: 60,
               decoration: BoxDecoration(
                 border: Border.all(
                   width: 2.0,
                   color: Theme.of(context).accentColor,
                 ),
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
               child: FlatButton(
                 child: Row(

                   children: <Widget>[
                     Container(
                       height: 24,
                       width: 130,
                       child: Image.asset("assets/fb.png"),
                     ),
                     Text("Entrar com o Facebook"),
                   ],
                 ),
                 onPressed: (){},
               ),
             ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).accentColor,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FlatButton(
                  child: Row(

                    children: <Widget>[
                      Container(
                        height: 24,
                        width: 130,
                        child: Image.asset("assets/google.png"),
                      ),
                      Text("Entrar com o Google"),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
