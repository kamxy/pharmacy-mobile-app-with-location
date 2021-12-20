import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pharmacy_app/components/main_button.dart';
import 'package:pharmacy_app/controllers/api_controller.dart';
import 'package:pharmacy_app/models/eczane_model.dart';
import 'package:pharmacy_app/screens/pharmacy_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String city;
  String district;
  bool isLoading = false;
  bool serviceEnabled;

  @override
  void initState() {
    super.initState();

    Geolocator.isLocationServiceEnabled()
        .then((value) => serviceEnabled = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            space(50),
            logoContainer(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Nöbetçi Eczane Mobil Uygulamasına Hoşgeldiniz",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            space(40),
            TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(hintText: "Şehir"),
              onChanged: (value) {
                city = value;
              },
            ),
            space(20),
            TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: "İlçe",
              ),
              onChanged: (value) {
                district = value;
              },
            ),
            space(40),
            InkWell(
                onTap: () async {
                  setState(() => isLoading = true);
                  setState(() {});
                  List<Eczane> pharmacyList = await ApiController()
                      .getPharmacyList(district: district, city: city);

                  setState(() => isLoading = false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PharmacyListScreen(
                          eczaneList: pharmacyList,
                        ),
                      ));
                },
                child: MainButton(
                  isLoading: isLoading,
                  text: "Nöbetçi Eczane Ara",
                  color: Colors.red,
                )),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                await Geolocator.requestPermission();
                Position position = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high);

                List<Eczane> pharmacyList = await ApiController()
                    .getPharmacyListWithLocation(
                        long: position.longitude, lat: position.latitude);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PharmacyListScreen(
                        eczaneList: pharmacyList,
                      ),
                    ));
              },
              child: MainButton(
                isLoading: isLoading,
                text: "Yakınımda ki Eczaneleri Bul",
                color: Colors.blue,
              ),
            )
          ],
        ),
      )),
    );
  }

  SizedBox space(double height) {
    return SizedBox(
      height: height,
    );
  }

  logoContainer() {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/eczane_ico.png"))),
    );
  }
}
