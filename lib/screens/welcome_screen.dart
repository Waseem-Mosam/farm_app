import 'package:farm_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {

    final getStartedButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.amber,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15,20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Text("Get Started", textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "\"Welcome to the Tsela Yagwe Network, the ultimate network to support and promote you and your business during these testing and inflated post Covid economies.\"",
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                    height: 1.6,),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25 ,),
              getStartedButton,
            ],
          ),
        ),
      ) ,
    );
  }
}
