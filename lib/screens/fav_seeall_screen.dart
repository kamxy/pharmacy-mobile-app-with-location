import 'package:flutter/material.dart';
import 'package:pharmacy_app/components/pharmacy_list_item.dart';
import 'package:pharmacy_app/models/eczane_model.dart';
import 'package:pharmacy_app/models/eczane_objectboxt_model.dart';

class FavSeeallScreen extends StatefulWidget {
  List<EczaneObjectBox> eczaneList;

  FavSeeallScreen({Key key, this.eczaneList}) : super(key: key);
  @override
  _FavSeeallScreenState createState() => _FavSeeallScreenState();
}

class _FavSeeallScreenState extends State<FavSeeallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorilerim",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: ListView.builder(
        itemCount: widget.eczaneList.length,
        itemBuilder: (context, index) {
          return PharmacyListItem(
            eczane: new Eczane(
                eczaneAdi: widget.eczaneList[index].eczaneAdi,
                adresi: widget.eczaneList[index].adresi,
                telefon: widget.eczaneList[index].telefon,
                isFav: true),
            isFav: true,
          );
        },
      ),
    );
  }
}
