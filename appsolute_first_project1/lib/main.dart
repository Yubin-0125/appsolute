import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppsoluteFirstProject1(
      ),
    ),
  );
}
  class AppsoluteFirstProject1 extends StatefulWidget {
    const AppsoluteFirstProject1({super.key});

    @override
    State<AppsoluteFirstProject1> createState() => _State();
  }

  class _State extends State<AppsoluteFirstProject1> {

    Widget ImagesItem(String path, String title) {
      return Column(
        children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                path,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,),
          ),
        ],
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Appsolute 미술관', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImagesItem('assets/image/1.png', '나'),
                  ImagesItem('assets/image/2.png', '짱구'),
                  ImagesItem('assets/image/3.png', '맹구'),
                ],
              ),

          SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ImagesItem('assets/image/4.png', '훈이'),
              ImagesItem('assets/image/5.png', '철수'),
              ImagesItem('assets/image/6.png', '유리'),
            ],
          ),
          ],
          ),
        ),
      );
    }
  }
