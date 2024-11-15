// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ItemDescriptionPage(),
//       theme: ThemeData(primarySwatch: Colors.green),
//     );
//   }
// }

// class ItemDescriptionPage extends StatefulWidget {
//   @override
//   _ItemDescriptionPageState createState() => _ItemDescriptionPageState();
// }

// class _ItemDescriptionPageState extends State<ItemDescriptionPage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pet Profile'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Profile section
//             Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(color: Colors.grey, blurRadius: 5.0),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: NetworkImage(
//                         'https://example.com/path-to-your-image.jpg'), // Replace with your image URL
//                   ),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Maxime',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text('368117766'),
//                       Row(
//                         children: [
//                           IconButton(
//                             icon: Icon(Icons.call, color: Colors.green),
//                             onPressed: () {},
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.message, color: Colors.green),
//                             onPressed: () {},
//                           ),
//                           IconButton(
//                             icon: Icon(Icons.email, color: Colors.green),
//                             onPressed: () {},
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             // Tab section
//             Container(
//               color: Colors.white,
//               child: TabBar(
//                 controller: _tabController,
//                 labelColor: Colors.black,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'Pet'),
//                   Tab(text: 'Owner'),
//                   Tab(text: 'My Location'),
//                 ],
//               ),
//             ),
//             // Tab views
//             Container(
//               height: 400,
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   PetDetails(),
//                   Center(child: Text('Owner Details')),
//                   Center(child: Text('Location Details')),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PetDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           DetailRow(label: 'Name', value: 'Maxime'),
//           DetailRow(label: 'Species', value: 'Dog'),
//           DetailRow(label: 'Breed', value: 'Labrador Retriever'),
//           DetailRow(label: 'Gender', value: 'Male'),
//           DetailRow(label: 'Birthday', value: '05-11-2018'),
//           DetailRow(label: 'List of commands my pet responds to', value: 'None'),
//         ],
//       ),
//     );
//   }
// }

// class DetailRow extends StatelessWidget {
//   final String label;
//   final String value;

//   DetailRow({required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             label,
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(value),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ItemDescriptionPage extends StatelessWidget {
  const ItemDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: const Text(
              'Pet Profile',
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Pet'),
                Tab(text: 'Owner'),
                Tab(text: 'My Location'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              PetDetails(),
              Center(child: Text("Owner Details")), // Placeholder for Owner tab
              Center(child: Text("Location Details")), // Placeholder for Location tab
            ],
          ),
        ),
      );
  }
}

class PetDetails extends StatelessWidget {
  const PetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailRow(title: "Name", value: "Maxime"),
            Divider(),
            DetailRow(title: "Species", value: "Dog"),
            Divider(),
            DetailRow(title: "Breed", value: "Labrador Retriever"),
            Divider(),
            DetailRow(title: "Gender", value: "Male"),
            Divider(),
            DetailRow(title: "Birthday", value: "05-11-2018"),
            Divider(),
            DetailRow(title: "List of commands my pet responds to", value: "None"),
          ],
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
