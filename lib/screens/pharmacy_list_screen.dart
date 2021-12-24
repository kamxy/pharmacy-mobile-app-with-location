import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pharmacy_app/components/pharmacy_list_item.dart';
import 'package:pharmacy_app/models/eczane_model.dart';
import 'package:pharmacy_app/models/eczane_objectboxt_model.dart';
import 'package:pharmacy_app/screens/home_screen.dart';

import '../main.dart';
import '../objectbox.g.dart';

class PharmacyListScreen extends StatefulWidget {
  List<Eczane> eczaneList;

  PharmacyListScreen({Key key, this.eczaneList}) : super(key: key);

  @override
  _PharmacyListScreenState createState() => _PharmacyListScreenState();
}

class _PharmacyListScreenState extends State<PharmacyListScreen> {
  List<EczaneObjectBox> boxList;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    eczaneBox = Box<EczaneObjectBox>(store);
    boxList = eczaneBox.getAll();
    print("boxlen" + boxList.length.toString());

    widget.eczaneList.forEach((element) {
      element.isFav = isFav(element.eczaneAdi);
    });
    setState(() {
      isLoading = false;
    });
  }

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
      body: isLoading
          ? Center(
              child: CupertinoActivityIndicator(),
            )
          : ListView.builder(
              itemCount: widget.eczaneList.length,
              itemBuilder: (context, index) {
                return PharmacyListItem(
                  eczane: widget.eczaneList[index],
                  onPress: () {
                    setState(() {
                      widget.eczaneList[index].isFav =
                          !widget.eczaneList[index].isFav;
                    });
                    if (isFav(widget.eczaneList[index].eczaneAdi)) {
                      boxList.forEach((element) {
                        if (element.eczaneAdi ==
                            widget.eczaneList[index].eczaneAdi) {
                          boxList.remove(element);
                          eczaneBox.remove(element.id);
                          setState(() {
                            boxList.remove(element);
                            eczaneBox.remove(element.id);
                          });
                          setState(() {});
                        }
                      });
                    } else {
                      print("else");
                      boxList.add(new EczaneObjectBox(
                          eczaneAdi: widget.eczaneList[index].eczaneAdi,
                          adresi: widget.eczaneList[index].adresi,
                          telefon: widget.eczaneList[index].telefon));
                      eczaneBox.put(new EczaneObjectBox(
                          eczaneAdi: widget.eczaneList[index].eczaneAdi,
                          adresi: widget.eczaneList[index].adresi,
                          telefon: widget.eczaneList[index].telefon));
                      setState(() {});
                    }
                  },
                );
              },
            ),
    );
  }

  bool isFav(String name) {
    boxList.forEach((element) {
      print(element.eczaneAdi);
      if (element.eczaneAdi == name) {
        print("return true");
        return true;
      }
    });
    return false;
  }
}
