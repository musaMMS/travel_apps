import 'package:flutter/material.dart';
import 'package:travel_apps/screen/FlightScreen.dart';
import 'package:travel_apps/widget/class.dart';
import 'package:travel_apps/widget/navigation_ba.dart';

class BookFlightPage extends StatefulWidget {
  const BookFlightPage({super.key });
  @override
  State<BookFlightPage> createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<BookFlightPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset('assets/images/pelen.jpeg',
                    height: 300,
                    width: 200,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Lets Enjoy A new World ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Cri',
                ),
                textAlign: TextAlign.center,

              ),
              SizedBox(height: 10,),
              Text("Search the safest destination",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FlightBookingScreen(addLove: (Love ) {  },))
                );
              },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text("Get Strated",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


    }


