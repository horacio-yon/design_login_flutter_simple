import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_app2/UI/CustomInputField.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login App',
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // color: Color.fromRGBO(0, 188, 212,1),
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 0.4),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(3.5, -1.6),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 0.4),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 400,
                  // color: Colors.brown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdbjUy-J_pFwYyAAiQ50aNL_e_POUTl8t1wNwGK52oHU_fu03N&usqp=CAU")),
                        ),
                      ),
                      CustomInputField(
                        fieldIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        hinText: 'Usuario',
                      ),
                      CustomInputField(
                        fieldIcon: Icon(Icons.lock, color: Colors.white),
                        hinText: 'password',
                      ),
                      CupertinoButton(
                        child: Text(
                          'login',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
