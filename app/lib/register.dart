import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                    left: 110,
                    right: 0,
                    child: Text("REGISTER\n     NOW",style: TextStyle(color: Colors.white,fontSize: 40),)
                  ),
                  Positioned(
                    top: 280,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                    
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Colors.grey,),
                      labelText: "Username",
                      
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
                    top: 360,
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
                    top: 440,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                    
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone,color: Colors.grey,),
                      labelText: "Phone",
                      
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
                    top: 520,
                    left: 40,
                    right: 40,
                    child: TextFormField(
                    
                    keyboardType: TextInputType.visiblePassword,
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
                    top: 600,
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
                                Text("REGISTER",style: TextStyle(color: Colors.white),),
                                Icon(Icons.paste,color: Colors.white,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                    
                    ),    

                ],
          ),
            ],
          )
      
    );
  }
}