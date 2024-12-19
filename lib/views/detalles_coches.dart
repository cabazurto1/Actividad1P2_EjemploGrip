import 'package:flutter/material.dart';
import '../models/coches_modelo.dart';


const Color kAppBarColor = Color(0xFF5DADE2);
const Color kDividerColor = Color(0xFFE3F2FD);
const Color kTextColor = Color(0xFF0D47A1);
const double kFontSize = 20.0;

class DetallesCoche extends StatelessWidget {
  final Coche coche;

  DetallesCoche({required this.coche});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${coche.modelo}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Container(
        color: kDividerColor,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  coche.image,
                  SizedBox(height: 20),
                  Text(
                    "Marca: ${coche.marca}",
                    style: TextStyle(
                      fontSize: kFontSize,
                      fontWeight: FontWeight.bold,
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Modelo: ${coche.modelo}",
                    style: TextStyle(
                      fontSize: kFontSize,
                      color: kTextColor,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
