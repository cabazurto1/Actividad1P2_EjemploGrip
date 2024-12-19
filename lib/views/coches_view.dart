import '../controller/coches_controller.dart';
import 'package:flutter/material.dart';
import 'detalles_coches.dart';


const Color kAppBarColor = Color(0xFF5DADE2);
const Color kCardColor = Color(0xFFB3E5FC);
const Color kDividerColor = Color(0xFFE3F2FD);
const Color kTextColor = Color(0xFF0D47A1);
const double kFontSize = 20.0;

class CochesView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CochesViewState();
}

class CochesViewState extends State<CochesView> {
  final CocheController _controller = CocheController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo Grid", style: TextStyle(color: Colors.white)),
        backgroundColor: kAppBarColor,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _controller.coches.length,
        itemBuilder: (context, index) {
          final item = _controller.coches[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesCoche(coche: item),
                ),
              );
            },
            child: Card(
              color: kCardColor,
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    item.image,
                    Divider(color: kDividerColor),
                    Text(
                      '${item.modelo}',
                      style: TextStyle(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: kFontSize,
                      ),
                    ),
                    Text(
                      '${item.marca}',
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: kFontSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
