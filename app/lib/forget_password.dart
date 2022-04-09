import 'package:app/login.dart';
import 'package:app/register.dart';
import 'package:flutter/material.dart';
class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({ Key? key }) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
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
                    child: Text("RESET\n NOW",style: TextStyle(color: Colors.white,fontSize: 40),)
                  ),
                  Positioned(
                    top: 400,
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
                    top: 500,
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
                                Text("RESET  NOW",style: TextStyle(color: Colors.white),),
                                Icon(Icons.replay_outlined,color: Colors.white,)
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
                                    builder: (BuildContext context) => new RegisterScreen()));
                          },
                          child: Text("Register",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushReplacement(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) => new LoginScreen()));
                          },
                          child: Text("LOGIN",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
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