import 'package:flutter/material.dart';
import 'package:travel_apps/destinatiuon.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deshboard',style: TextStyle(
            fontFamily: "Courgette",
          fontSize: 25,
          fontStyle: FontStyle.italic,
        ),
        ),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Your back button action here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Your notifications button action here
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Your settings button action here
            },
          ),
        ],
        backgroundColor: Colors.blue.shade200,
      ),
      backgroundColor: Colors.blue[100],
      body: SingleChildScrollView(
        child: SafeArea(// Wrapping the entire body inside SingleChildScrollView
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Greeting and profile section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/musa-desk.jpeg', // Replace with your image path
                              fit: BoxFit.cover,
                              height: 100,
                              width: 120,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Hi Musa!',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Satisfy',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Search section
                Text(
                  'Where you want to go?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search a flight',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                // Upcoming Trips section
                Text(
                  'Upcoming Trips',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10 May, 12:30 pm',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'ABC',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height:10,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Albanca, Sedarka',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.flight, color: Colors.white,size: 80,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '11 May, 06:15 am',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'XYZ',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height:10,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Xyarite,pilanto',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Popular Destinations section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Destinations',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Destination cards
                Container(
                  height: 200, // Adjust the height for the destination list
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DestinationCard(
                        imagePath: 'assets/images/Paris1.jpg', // Add your image assets
                        place: 'Paris',
                        country: 'France',
                      ),
                      DestinationCard(
                        imagePath: 'assets/images/rome.jpeg',
                        place: 'Rome',
                        country: 'Italy',
                      ),
                      DestinationCard(
                        imagePath: 'assets/images/turky.jpeg',
                        place: 'Istanbul',
                        country: 'Turkey',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
