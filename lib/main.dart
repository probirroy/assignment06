import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        //useMaterial3: true,
      ),
      home: HomeScreen(),

    );
  }
}


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              //color: Colors.amberAccent,
              alignment: Alignment.center,
              child: const Text(
                "Welcome to My Photo Gallery!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search Your Photo',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(width: 1.4, color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1.3,
                      color: Colors.blue.shade300,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?w=1060&t=st=1686846115~exp=1686846715~hmac=8f077c2c76f43ab4571cd7e025614625d2130c1013df855cd6113dc9e4a047ff",
                            fit: BoxFit.fill),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/yellow-flower-white-background_1203-2149.jpg?w=740&t=st=1686846220~exp=1686846820~hmac=ed8bc7c7cf6608d8f2c0eb7178274ad24f890b9d57e73d14607a528d9f536220",
                            fit: BoxFit.fill),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/beautiful-orange-gerbera-isolated-white_268835-1358.jpg?w=1060&t=st=1686846397~exp=1686846997~hmac=f1f7c27266db8d0dfeb500a7b97bb4258ce865b8504df2e7c59f17421111e866",
                            fit: BoxFit.fill),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/cosmos-flowers_1373-23.jpg?w=996&t=st=1686846466~exp=1686847066~hmac=d479fdaadca46ba659ad845b5067896434492b566e3dc4a447d9140b37bcf6de",
                            fit: BoxFit.fill),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/blue-cosmos-flowers_1373-227.jpg?t=st=1686846466~exp=1686847066~hmac=57c0651f5602bc9a39f6ef7ac04775d42f2d45a3b4b6cb6ee97e30b1d5002544",
                            fit: BoxFit.fill),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {mySnackBar("Clicked on photo!", context);},
                  style: buttonStyle,
                  child: Stack(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        //color: Colors.black,
                        child: Image.network(
                            "https://img.freepik.com/free-photo/selective-focus-shot-purple-african-daisy-flower_181624-27916.jpg?t=st=1686846504~exp=1686847104~hmac=9949713348070be0453559da74a60bda096dacfeb565d95d39ad7de47c983620",
                            fit: BoxFit.fill
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        //alignment: Alignment(0,2),
                        child: Container(
                          width: 80,
                          height: 55,
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                          child: const Center(
                              child: Text(
                                "Caption",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Image.network(
                      "https://img.freepik.com/free-photo/beautiful-macro-picture-white-cape-daisy-garden_181624-25499.jpg?t=st=1686846626~exp=1686847226~hmac=20b50841d94e78dc0a60dbaa98b0f96ef1d83a24a8b0696158c90a73a0f8ffa3"),
                  title: const Text(
                    "Flower Photo 01",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Category 01",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Image.network(
                      "https://img.freepik.com/free-photo/white-daisy-flower_417767-451.jpg?t=st=1686846637~exp=1686847237~hmac=f2f5e5d97be16f37fa18c37cbfab615b930560f4d3aa2424bc2ded3e0a08141f"),
                  title: const Text(
                    "Flower Photo 02",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Category 02",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Image.network(
                      "https://img.freepik.com/free-photo/little-beetle-wonderful-violet-flower-with-yellow-center_23-2148060173.jpg?t=st=1686846466~exp=1686847066~hmac=c7152c9cae2e304c1c7ade22243bce3de08bb305e8fb469865a12b47dbd0184a"),
                  title: const Text(
                    "Flower Photo 03",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Category 03",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: IconButton(
                        onPressed: () {
                          mySnackBar("Photos Uploaded Successfully!", context);
                        },
                        icon: const Icon(
                          Icons.cloud_upload_rounded,
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}