import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam/result_page.dart';
import 'package:yasam/user_Data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? secilicinsiyet;
  double spor = 0;
  double icilensigara = 0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: MyContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            'BOY',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            boy.toString(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    boy++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.black,
                                  size: 15,
                                )),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    boy--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.black,
                                  size: 15,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                  renk: Colors.orange,
                )),
                Expanded(
                    child: MyContainer(
                  renk: Colors.orange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          kilo.toString(),
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'KİLO',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.black,
                                  size: 15,
                                )),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    kilo--;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.black,
                                  size: 15,
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Expanded(
              child: MyContainer(
            renk: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'haftada Kaç Gün Spor Yapıyorsunuz',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  spor.round().toString(),
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                  activeColor: Colors.black,
                  value: spor,
                  max: 7,
                  divisions: 7,
                  label: icilensigara.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      spor = value;
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
              child: MyContainer(
            renk: Colors.orange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Günde Kaç Sigara İçiyorsunuz?',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  icilensigara.round().toString(),
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                Slider(
                  activeColor: Colors.black,
                  value: icilensigara,
                  max: 30,
                  divisions: 30,
                  label: icilensigara.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      icilensigara = value;
                    });
                  },
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        secilicinsiyet = 'kadın';
                      });
                    },
                    child: MyContainer(
                      renk: secilicinsiyet == 'kadın'
                          ? Colors.yellow
                          : Colors.orange,
                      child: kadinerkek(
                        cinsiyet: 'KADIN',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        secilicinsiyet = 'erkek';
                      });
                    },
                    child: MyContainer(
                      renk: secilicinsiyet == 'erkek'
                          ? Colors.yellow
                          : Colors.orange,
                      child: kadinerkek(
                        cinsiyet: 'ERKEK',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 150,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => resultpage(userdata(
                            kilo: kilo,
                            boy: boy,
                            secilicinsiyet: secilicinsiyet,
                            spor: spor))));
              },
              child: Text(
                'HESAPLA',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class kadinerkek extends StatelessWidget {
  final String? cinsiyet;
  final IconData? icon;
  kadinerkek({this.cinsiyet, this.icon});

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.black54,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$cinsiyet',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;

  MyContainer({this.renk, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
