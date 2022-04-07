
import 'package:flutter/material.dart';

class TVShowsDetail extends StatelessWidget {
  final assetPath, name,syn, detail;

  TVShowsDetail({this.assetPath, this.name,this.syn, this.detail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
          children: [
            SizedBox(height: 15.0),

            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 250.0,
                    width: 250.0,
                    fit: BoxFit.contain
                )
            ),

            SizedBox(height: 30.0),
            Center(
              child: Text(name,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text('Synopsis : ',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF575E67))
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
                child: Text(detail,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0))),
          ]
      ),
    );
  }
}
