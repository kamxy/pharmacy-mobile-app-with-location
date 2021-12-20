import 'package:flutter/material.dart';
import 'package:pharmacy_app/components/pharmacy_list_item.dart';
import 'package:pharmacy_app/models/eczane_model.dart';

import '../main.dart';

class PharmacyListScreen extends StatefulWidget {
  List<Eczane> eczaneList;
  PharmacyListScreen({Key key, this.eczaneList}) : super(key: key);

  @override
  _PharmacyListScreenState createState() => _PharmacyListScreenState();
}

class _PharmacyListScreenState extends State<PharmacyListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          widget.eczaneList.length.toString() + " adet sonuç listelendi",
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: darkThemeGrey, fontSize: 16),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.eczaneList.length,
        itemBuilder: (context, index) {
          return PharmacyListItem(
            eczane: widget.eczaneList[index],
          );
        },
      ),
    );
  }
}
