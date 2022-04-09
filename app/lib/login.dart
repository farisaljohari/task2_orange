import 'package:app/forget_password.dart';
import 'package:app/register.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
          ListView(
            shrinkWrap: true,
            //physics: NeverScrollableScrollPhysics(),
            children: [
              Stack(
                children: [
                  Container(
                    height: 700,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage("assets/images/backGround.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                  ),
                  Positioned(
                    top: 50,
                    left: 140,
                    right: 0,
                    child: Text(" OMS\nLOGIN",style: TextStyle(color: Colors.white,fontSize: 40),)
                  ),
                  Positioned(
                    top: 300,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                    
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Colors.grey,),
                      labelText: "Eamil",
                      
                      labelStyle: TextStyle(color: Colors.grey),
                      
                      filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                        borderSide: BorderSide(
                          color: Colors.grey,width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10),
                        
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                          
                          ),
                          
                    ),
                    
                    ),
                  )
                        
                  ),
                  Positioned(
                    top: 380,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                    
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password,color: Colors.grey,),
                      labelText: "Password",
                      
                      labelStyle: TextStyle(color: Colors.grey),
                      
                      filled: true,

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        
                        borderSide: BorderSide(
                          color: Colors.grey,width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(10),
                        
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                          
                          ),
                          
                    ),
                    
                    ),
                  )
                        
                  ),
                  Positioned(
                    top: 480,
                    left: 170,
                    right: 40,
                    child:InkWell(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                        
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("LOG IN",style: TextStyle(color: Colors.white),),
                                Icon(Icons.lock,color: Colors.white,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                    
                    ),    
                  Positioned(
                    top: 630,
                    left: 30,
                    right: 30,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>  RegisterScreen()));
                          },
                          child: Text("Register",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) => new ForgetPassScreen()));
                          },
                          child: Text("Forget Password?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    )
                    
                    ),    
                  
                ],
          ),
            ],
          )
      
    );
  }
}