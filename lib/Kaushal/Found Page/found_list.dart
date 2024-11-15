import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Decription Page/description_ui.dart';
import 'Found_Model.dart';

class FoundPage extends StatefulWidget {
  const FoundPage({super.key});

  @override
  State<FoundPage> createState() => _FoundPageState();
}

class _FoundPageState extends State<FoundPage> {
  TextEditingController searchController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color> cardColor = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  List<Found_Model> lostCards = [
    Found_Model(
        date: "18 JULY,2024",
        description:
            "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
        title: "Flutter",
        location: "Pune"),
    Found_Model(
        date: "25 JULY,2024",
        description: "Collection, OOPS, Abstraction, Interface, Serialization",
        title: "Java",
        location: "Mumbai"),
    Found_Model(
        date: "18 JULY,2024",
        description:
            "Widgets, AppBar, NavBar, GestureDtector, List, TextEditingController",
        title: "Flutter",
        location: "Pune"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Found Items"),
          centerTitle: true,
          backgroundColor: const Color(0xffbb8493),
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
                      // TODO: Implement filter functionality
                    },
                    icon: const Icon(Icons.sort),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: lostCards.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const ItemDescriptionPage();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: cardColor[index % cardColor.length],
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
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  height: 120,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.white,
                                  ),
                                  child: Image.asset("assets/Kaushal/jpeg/mobile.jpg"),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  lostCards[index].title,
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined),
                                    Text(
                                      lostCards[index].location,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  lostCards[index].date,
                                  style: GoogleFonts.quicksand(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 25,right:10),
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Center(
                            child: Text(
                              "Found",
                              style:GoogleFonts.quicksand(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor:const Color(0xffbb8493),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
