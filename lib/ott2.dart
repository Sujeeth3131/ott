import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newott/ott3.dart';
import 'package:newott/ott4.dart';
import 'package:newott/ott5navi.dart';

class ott2 extends StatefulWidget {
  const ott2({super.key});

  @override
  State<ott2> createState() => _ott2State();
}

class _ott2State extends State<ott2> {
final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      height:800,
        width: double.infinity,
          decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("pi/loginim.jpeg"),fit: BoxFit.fill,
         ),

        ),
        child: Form(
          key: _formkey,
          child: Column(
            children: [

              SizedBox(height: 200,),
              Container(
                height: 400,
                width: 250,
                color: Colors.white.withOpacity(0.9),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('LOGIN '),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      TextFormField(
                          decoration: InputDecoration( prefixIcon:Icon(Icons.face)
                              ,hintText: "User name",
                              border: OutlineInputBorder(),
                          ),
                        validator: (value){
                            if(value==null|| !RegExp(r"^[a-zA-Z]").hasMatch(value)){
                              return"Enter valid name";
                            }else{
                              return null;
                            }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(decoration: InputDecoration(suffixIcon: Icon(Icons.wifi_password_outlined),
                          hintText: "Enter your password",
                          border: OutlineInputBorder()),
                        validator: (value){
                          if(value==null|| !RegExp(r"^[0-8]").hasMatch(value)){
                            return"Enter valid name";
                          }else{
                            return null;
                          }
                        },
                      ),
                    ),
                     Text('Forget password ?',style: TextStyle(color: Colors.blue),),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ElevatedButton(onPressed: (){
                       if(_formkey.currentState!.validate()) {
                         Navigator.push(context,
                             MaterialPageRoute(builder: (
                                 context) => const bottomnavigation1())
                         );
                       }

                     }, child: Text('LOGIN')),



                   ),
                    GestureDetector(onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ott3()),
                      );
                    },
                      child: RichText(text:TextSpan(
                        children: [
                          TextSpan(text:'Do not have a account?',style: TextStyle(color: Colors.black) ),
                          TextSpan(text: ' Sign up',style: TextStyle(color: Colors.blueAccent))]
                      ),


                ),
                    ),
            ],
          ),
      ),
      ],
    ),
        ),
    ),
    );
  }
}
