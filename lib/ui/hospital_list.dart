import 'package:flutter/material.dart';

class HospitalsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Medical Services',
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
          HospitalCard(
            hospitalName: 'Hospital A',
            location: '1234 Street, City',
            phone: '123-456-7890',
          ),
          SizedBox(height: 16.0),
          HospitalCard(
            hospitalName: 'Hospital B',
            location: '5678 Avenue, City',
            phone: '987-654-3210',
          ),
          SizedBox(height: 16.0),
          HospitalCard(
            hospitalName: 'Hospital C',
            location: '7890 Boulevard, City',
            phone: '456-789-0123',
          ),
        ],
      ),
    );
  }
}

class HospitalCard extends StatelessWidget {
  final String hospitalName;
  final String location;
  final String phone;

  HospitalCard({
    required this.hospitalName,
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
              hospitalName,
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
