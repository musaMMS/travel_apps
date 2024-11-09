import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String place;
  final String country;

  DestinationCard({
    required this.imagePath,
    required this.place,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.blue,
    //   height: 100,
    //   margin: EdgeInsets.only(right: 16),
    //   child: Container(
    //     decoration: BoxDecoration(
    //
    //     ),
    //     width: 150,
    //     height: 80,
    //     color: Colors.white,
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           ClipRRect(
    //             borderRadius: BorderRadius.circular(12),
    //             child: Image.asset(
    //               imagePath,
    //               height: 150,
    //               width: 200,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           SizedBox(height: 8),
    //           Text(
    //             place,
    //             style: TextStyle(
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           Text(
    //             country,
    //             style: TextStyle(color: Colors.grey),
    //           ),
    //         ],
    //       ),
    //
    //   ),
    // );
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 4), // Border around the container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with rounded corners
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  country,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}