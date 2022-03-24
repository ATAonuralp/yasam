import 'package:flutter/material.dart';
import 'package:yasam/input_page.dart';
import 'package:yasam/user_Data.dart';
import 'hesap.dart';

class resultpage extends StatelessWidget {
  final userdata _userdata;
  const resultpage(this._userdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Sonuç Sayfası',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                'BEKLENEN YAŞAM SÜRESİ:' +
                    hesap(_userdata).hesaplama().round().toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'GERİ DÖN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }
}
