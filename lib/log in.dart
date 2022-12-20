import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "log in",
                        style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      SvgPicture.asset("assets/icons/login.svg"),
                      SizedBox(
                        height: 22,
                      ),
                      SizedBox(height: 22,),
                    // ignore: prefer_const_constructors
                    Container(
                      margin: EdgeInsets.only(right: 50,left: 50),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        
                        borderRadius: BorderRadius.circular(22)
                      ),
                      child: TextField(
                        decoration:InputDecoration(
                          border: InputBorder.none,
                          hintText: "email",
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    ),
                    SizedBox(height: 22,),
                     Container(
                      margin: EdgeInsets.only(right: 50,left: 50),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 240, 152, 255),
                    borderRadius: BorderRadius.circular(22)),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    hintText: " password",
                    labelStyle: TextStyle(fontSize: 22, color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),

                    SizedBox(height: 22,),
                      // SizedBox(height: ,),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 79, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: Text(
                          "login",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_top.png",
                    width: 111,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: 111,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}