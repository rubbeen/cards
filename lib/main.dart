import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hi",
      home: cartas(),
    );
  }
}

class cartas extends StatefulWidget {
  cartas({Key? key}) : super(key: key);

  @override
  State<cartas> createState() => _cartasState();
}

class _cartasState extends State<cartas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Bills",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                      width: 6, //separacion entre widjet ancho
                    ),
                    _ElectricBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _WaterBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _PhoneBill(),
                    SizedBox(
                      width: 5, //separacion entre widjet ancho
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6, //separacion entre widjet ancho
                    ),
                    _LocationBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _PhoneBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _LocationBill(),
                    SizedBox(
                      width: 5, //separacion entre widjet ancho
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6, //separacion entre widjet ancho
                    ),
                    _InternetBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _WaterBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _ElectricBill(),
                    SizedBox(
                      width: 5, //separacion entre widjet ancho
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 6, //separacion entre widjet ancho
                    ),
                    _PhoneBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _ElectricBill(),
                    SizedBox(
                      width: 13, //separacion entre widjet ancho
                    ),
                    _InternetBill(),
                    SizedBox(
                      width: 5, //separacion entre widjet ancho
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 245, 243, 243),
    );
  }

  Widget _InternetBill() {
    return Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 3,
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 20, 30, 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 130,
              child: Row(
                children: [
                  Icon(
                    Icons.wifi,
                    color: Colors.purple,
                    size: 40.0,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Internet bill",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("10/2/2019"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromARGB(255, 105, 216, 214),
                    onPrimary: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unpaid",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _ElectricBill() {
    return Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 3,
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 20, 30, 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 130,
              child: Row(
                children: [
                  Icon(
                    Icons.lightbulb_outline,
                    color: Colors.yellow,
                    size: 40.0,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Electric Bill",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("10/2/2019"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromARGB(255, 105, 216, 214),
                    onPrimary: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unpaid",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _WaterBill() {
    return Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 3,
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 20, 30, 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 130,
              child: Row(
                children: [
                  Icon(
                    Icons.water,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Water Bill",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("10/2/2019"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromARGB(255, 105, 216, 214),
                    onPrimary: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unpaid",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _PhoneBill() {
    return Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 3,
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 20, 30, 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 130,
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.red,
                    size: 40.0,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Phone Bill",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("10/2/2019"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromARGB(255, 105, 216, 214),
                    onPrimary: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unpaid",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _LocationBill() {
    return Card(
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 3,
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.fromLTRB(5, 20, 30, 2),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 130,
              child: Row(
                children: [
                  Icon(
                    Icons.add_location,
                    color: Colors.orange,
                    size: 40.0,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Location Bill",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("10/2/2019"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Color.fromARGB(255, 105, 216, 214),
                    onPrimary: Color.fromARGB(255, 255, 255, 255)),
                onPressed: () => {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Unpaid",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
