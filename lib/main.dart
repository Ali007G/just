import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  var MyJsonData = [
    {
      "img": "https://i.ebayimg.com/images/g/by8AAOSwW0liqEVv/s-l640.jpg",
      "name": "iPhone 12",
      "Display_Size": "6.1 in",
      "Camera_Resolution": "12.0 MP"
    },
    {
      "img": "https://i.ebayimg.com/images/g/vhsAAOSwQW1iuuya/s-l640.jpg",
      "name": "iPhone 12 Pro Max",
      "Display_Size": "6.7 in",
      "Camera_Resolution": "12.0 MP"
    },
    {
      "img": "https://i.ebayimg.com/images/g/0P0AAOSwixdiuuyY/s-l640.jpg",
      "name": "iPhone 11 Pro Max",
      "Display_Size": "6.5 in",
      "Camera_Resolution": "12.0 MP"
    },
    {
      "img": "https://i.ebayimg.com/images/g/icgAAOSwgsRiuuyX/s-l640.jpg",
      "name": "IPhone 13 Pro Max",
      "Display_Size": "6.7 in",
      "Camera_Resolution": "12.0 MP"
    },
    {
      "img": "https://i.ebayimg.com/images/g/wtEAAOSwy3xiqEVv/s-l640.jpg",
      "name": "iPhone 13",
      "Display_Size": "6.1 in",
      "Camera_Resolution": "12.0 MP"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('My Work, Assignment-03'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewPage(
                          MyJsonData[index]['img']!,
                          MyJsonData[index]['name']!,
                          MyJsonData[index]['Display_Size']!,
                          MyJsonData[index]['Camera_Resolution']!,
                        )));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5.0),
            width: double.infinity,
            height: 350,
            child: Card(
              shadowColor: Colors.amber,
              child: Image.network(
                MyJsonData[index]['img']!,
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
      }),
    );
  }
}

class NewPage extends StatelessWidget {
  String img;
  String name;
  String Display_Size;
  String Camera_Resolution;

  NewPage(this.img, this.name, this.Display_Size, this.Camera_Resolution,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('New Page View'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Image.network(img),
              )),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Mobile Name-',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.amberAccent, blurRadius: 5.0)
                          ],
                        ),
                        width: 150,
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Display Size-',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.lightBlueAccent, blurRadius: 10.0)
                          ],
                        ),
                        width: 150,
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            Display_Size,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Camera Resulation-',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.greenAccent,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.green, blurRadius: 10.0),
                          ],
                        ),
                        width: 150,
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Text(
                            Camera_Resolution,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
