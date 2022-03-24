import 'package:yasam/user_Data.dart';
import 'package:flutter/material.dart';

class hesap {
  final userdata _userdata;
  hesap(this._userdata);
  double hesaplama() {
    double? sonuc;
    sonuc = (70 + _userdata.spor!);
    sonuc = (sonuc - (_userdata.icilensigara)!);
    sonuc = sonuc + (_userdata.boy! / _userdata.kilo!);
    if (_userdata.secilicinsiyet == 'kadın') {
      return sonuc + 3;
    } else {
      return sonuc;
    }
  }
}
