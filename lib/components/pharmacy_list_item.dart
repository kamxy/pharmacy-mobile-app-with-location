import 'package:flutter/material.dart';
import 'package:pharmacy_app/models/eczane_model.dart';
import 'package:pharmacy_app/screens/pharmacy_detail_screen.dart';

import '../main.dart';

class PharmacyListItem extends StatelessWidget {
  Eczane eczane;
  PharmacyListItem({Key key, this.eczane}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eczane.eczaneAdi,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                eczane.adresi,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: darkThemeGrey, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: darkThemeGrey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    eczane.telefon,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: darkThemeGrey, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: shadow,
        ),
      ),
    );
  }
}
