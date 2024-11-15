// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// // import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import './Lost_Model.dart';

// void main() {
//   runApp(LostPage());
// }

// class LostPage extends StatefulWidget {
//   LostPage({super.key});

//   @override
//   State<LostPage> createState() => _LostPageState();
// }

// class _LostPageState extends State<LostPage> {
//   double screenWidth = 0;

//   TextEditingController searchController = TextEditingController();
//   TextEditingController titleController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();
//   TextEditingController dateController = TextEditingController();

//   void filterSheet() {
//     // BottomSheet(
//     //   onClosing: ,
//     //   builder:
//     // );
//   }

//   bool startAnimation = false;

//   List<Color> cardColor = [
//     const Color.fromRGBO(250, 232, 232, 1),
//     const Color.fromRGBO(232, 237, 250, 1),
//     const Color.fromRGBO(250, 249, 232, 1),
//     const Color.fromRGBO(250, 232, 250, 1),
//   ];

//   List<Lost_Model> lostCards = [
//     Lost_Model(
//         date: "18 JULY,2024",
//         description:
//             "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
//         title: "Flutter",
//         location: "Pune"),
//     Lost_Model(
//         date: "25 JULY,2024",
//         description: "Collection, OOPS, Abstraction, Interface, Serialization",
//         title: "Java",
//         location: "Mumbai"),
//     Lost_Model(
//         date: "18 JULY,2024",
//         description:
//             "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
//         title: "Python",
//         location: "Nashik"),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       setState(() {
//         startAnimation = true;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     screenWidth = MediaQuery.of(context).size.width;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: const Icon(Icons.arrow_back),
//           title: const Text("Lost Items"),
//           centerTitle: true,
//           backgroundColor: const Color(0xffbb8493),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: searchController,
//                       decoration: InputDecoration(
//                         hintText: 'Search items...',
//                         prefixIcon: const Icon(Icons.search),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(50),
//                           borderSide: BorderSide.none,
//                         ),
//                         fillColor: const Color(0xfff1f1f1),
//                         filled: true,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   IconButton(
//                     onPressed: () {
//                       filterSheet();
//                     },
//                     icon: const Icon(Icons.sort),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: GridView.builder(
//                 // reverse: true,
//                 primary: false,
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 0.7,
//                 ),
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 itemCount: lostCards.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return item(index);
//                 },
//               ),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           shape: const CircleBorder(),
//           backgroundColor: const Color(0xffbb8493),
//           child: const Icon(
//             Icons.add,
//             color: Colors.white,
//             size: 40,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget item(int index) {
//     return AnimatedContainer(
//       width: screenWidth,
//       curve: Curves.easeInOut,
//       transform:
//           Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
//       duration: Duration(milliseconds: 300 + (index * 100)),
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GestureDetector(
//           onTap: () {},
//           child: Stack(children: [
//             Container(
//               decoration: BoxDecoration(
//                 color: cardColor[index % cardColor.length],
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: const [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     color: Color.fromRGBO(0, 0, 0, 0.1),
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(15),
//                       // height: 120,
//                       // width: 150,
//                       decoration: const BoxDecoration(
//                         // shape: BoxShape.circle,
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                         color: Colors.white,
//                       ),
//                       child: Image.asset("assets/jpeg/mobile.jpg"),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       lostCards[index].title,
//                       style: GoogleFonts.quicksand(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 17,
//                         color: const Color.fromRGBO(0, 0, 0, 1),
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 8),
//                     Row(
//                       children: [
//                         const Icon(Icons.location_on_outlined),
//                         Text(
//                           lostCards[index].location,
//                           style: GoogleFonts.quicksand(
//                             fontSize: 10,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       lostCards[index].date,
//                       style: GoogleFonts.quicksand(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topRight,
//               child: Container(
//                 margin: const EdgeInsets.only(bottom: 25, right: 10),
//                 height: 20,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Lost",
//                     style: GoogleFonts.quicksand(
//                       color: Colors.red,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Decription Page/description.dart';
import '../registration_page.dart';
import './Lost_Model.dart';

class LostPage extends StatefulWidget {
  const LostPage({super.key});

  @override
  State<LostPage> createState() => _LostPageState();
}

class _LostPageState extends State<LostPage> {
  double screenWidth = 0;

  TextEditingController searchController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void filterSheet() {
    // BottomSheet for filter functionality (to be implemented)
  }

  bool startAnimation = false;

  List cardColor = [
    const LinearGradient(colors:[
      Colors.blue,
      Colors.purple,
    ],),

    const LinearGradient(colors:[
      Colors.green,
      Colors.blue,
    ],),

    const LinearGradient(colors:[
      Colors.pink,
      Colors.orange,
    ],),

    const LinearGradient(colors:[
      Colors.yellow,
      Color.fromARGB(255, 62, 255, 223),
    ],),
  ];

  List<Lost_Model> lostCards = [
    Lost_Model(
        date: "18 JULY,2024",
        description:
            "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
        title: "Mobile",
        location: "Pune"),
    Lost_Model(
        date: "25 JULY,2024",
        description: "Collection, OOPS, Abstraction, Interface, Serialization",
        title: "Bag",
        location: "Mumbai"),
    Lost_Model(
        date: "18 JULY,2024",
        description:
            "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
        title: "Laptop",
        location: "Nashik"),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 600 ? 3 : 2;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Lost Items"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue, // Start color
                  Colors.purple,        // End color
                ],
              ),
            ),
          ),//const Color(0xffbb8493),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search items...',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: const Color(0xfff1f1f1),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      filterSheet();
                    },
                    icon: const Icon(Icons.sort),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: lostCards.length,
                itemBuilder: (BuildContext context, int index) {
                  return item(index);
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const ItemDetailFormPage();
                          }));
          },
          shape: const CircleBorder(),
          // backgroundColor: const Color(0xffbb8493),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.purple
              ]),
              shape: BoxShape.circle,

            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }

  Widget item(int index) {
    // double imageSize = screenWidth > 600 ? 100 : 80; // Responsive image size

    return AnimatedContainer(
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
      duration: Duration(milliseconds: 300 + (index * 100)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  // color: cardColor[index % cardColor.length],
                  // gradient: cardColor[index % cardColor.length],
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 200, 226, 247),
                      Color.fromARGB(255, 246, 197, 255),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25,left: 10,right:10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const DescriptionPage();
                          }));
                        },
                        child: Container(
                          // padding: const EdgeInsets.all(10),
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset("assets/Kaushal/jpeg/ship.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        lostCards[index].title,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth > 600 ? 18 : 14,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined, size: 16),
                          Flexible(
                            child: Text(
                              lostCards[index].location,
                              style: GoogleFonts.quicksand(
                                fontSize: screenWidth > 600 ? 12 : 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        lostCards[index].date,
                        style: GoogleFonts.quicksand(
                          fontSize: screenWidth > 600 ? 12 : 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  // margin: const EdgeInsets.all(10),
                  height: 20,
                  width: 50,
                  // color: Colors.red,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      "Lost",
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
