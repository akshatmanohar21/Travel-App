import 'package:flutter/material.dart';

class TheftList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Police Services',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          PoliceStationCard(
            policeStationName: 'Police Station A',
            location: '1234 Street, City',
            phone: '123-456-7890',
          ),
          SizedBox(height: 16.0),
          PoliceStationCard(
            policeStationName: 'Police Station B',
            location: '5678 Avenue, City',
            phone: '987-654-3210',
          ),
          SizedBox(height: 16.0),
          PoliceStationCard(
            policeStationName: 'Police Station C',
            location: '7890 Boulevard, City',
            phone: '456-789-0123',
          ),
        ],
      ),
    );
  }
}

class PoliceStationCard extends StatelessWidget {
  final String policeStationName; // Modified variable name
  final String location;
  final String phone;

  PoliceStationCard({
    required this.policeStationName, // Modified variable name
    required this.location,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              policeStationName, // Modified variable name
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Location: $location',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Phone: $phone',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
