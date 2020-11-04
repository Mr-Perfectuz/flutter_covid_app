import 'package:flutter/material.dart';
import 'package:flutter_covid_app/core/consts.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.mainColor,
                AppColors.mainColor.withOpacity(.5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/images/logo.png")),
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Coronavirus disease (Covid-19)",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "is and infectianus disease caused by a new\nvirus.",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * .85,
                        height: 60,
                        child: Center(
                          child: Text(
                            "GET STARTED",
                            style: TextStyle(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
