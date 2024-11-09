import 'package:flutter/material.dart';
import 'package:travel_apps/screen/loveScreen.dart';
import 'package:travel_apps/widget/class.dart';

class FlightBookingScreen extends StatefulWidget {
  const FlightBookingScreen({super.key, required this.addLove});

  final Function(Love) addLove;

  
  @override
  _FlightBookingScreenState createState() => _FlightBookingScreenState();

}
class _FlightBookingScreenState extends State<FlightBookingScreen> {

  // bool isOneWay = true;
  // String fromLocation = '';
  // String toLocation = '';
  // DateTime selectedDate = DateTime.now();

  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey <FormState>();





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Airplane Image
                CircleAvatar(
                  radius: 80,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/planesky.jpeg',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Book your flight',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                // One Way and Round Trip buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    SizedBox(width: 10),

                  ],
                ),
                SizedBox(height: 20),

                // Container with white background for input fields
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        // From input field
                        TextFormField(
                          validator: ( String? value) {
                     if (value==null|| value.trim().isEmpty) {
                     return 'Enter your From';
                     }
                      null;
                      },
                          controller: fromController,
                          decoration: InputDecoration(
                            labelText: 'FROM',
                            hintText: 'fromLocation',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                        SizedBox(height: 10),

                        // To input field
                        TextFormField(
                          validator: ( String? value) {
                            if (value==null|| value.trim().isEmpty) {
                              return 'Enter your to';
                            }
                            null;
                          },
                          controller: toController,
                          decoration: InputDecoration(
                            labelText: 'TO',
                            hintText: 'toLocation',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                        SizedBox(height: 10),

                        // Date Picker input field
                        TextFormField(
                          controller: dateController,
                          decoration: InputDecoration(
                            labelText: 'DATE',
                            hintText: 'Select Date',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.grey.shade100,
                          ),
                          // readOnly: true,
                          // onTap: _pickDate,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: ( String? value) {
                            if (value==null || value.trim().isEmpty) {
                              return 'Enter your Date';
                            }
                            null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                    }
                    Love love=Love(fromController.text.trim(), toController.text.trim(),dateController.text.trim());
                    widget.addLove(love);
                    Navigator.pop(context);
                  },

                  child: Text('View Flights'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
  void dispose(){
    fromController.dispose();
    toController.dispose();
    dateController.dispose();
    super.dispose();
  }

}
