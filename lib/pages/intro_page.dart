import 'package:flutter/material.dart';
import 'package:flutter_covid_app/core/consts.dart';
import 'package:flutter_covid_app/pages/home_page.dart';

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
              _buildHeader(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Image.asset("assets/images/virus.png"),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .25,
                right: 15,
                child: Container(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Image.asset("assets/images/person.png")),
              ),
              _buildFooter()
            ],
          )),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/logo.png")),
    );
  }
}

class _buildFooter extends StatelessWidget {
  const _buildFooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
            SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(1, 1),
                      spreadRadius: 4,
                      blurRadius: 3,
                    )
                  ],
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
            ),
          ],
        ),
      ),
    );
  }
}
