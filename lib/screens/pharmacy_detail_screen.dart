import 'package:flutter/material.dart';
import 'package:pharmacy_app/models/eczane_model.dart';

class PharmacyDetailScreen extends StatelessWidget {
  Eczane pharmacy;
  PharmacyDetailScreen({Key key, this.pharmacy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pharmacy.eczaneAdi,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
