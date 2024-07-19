import 'package:flutter/material.dart';
import 'package:travel_app/ui/hospital_list.dart';
import 'package:travel_app/ui/theft_list.dart';

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emergency Page',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: EmergencyButton(
                    label: 'Theft',
                    icon: Icons.security,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TheftList()),
                      );
                    },
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: EmergencyButton(
                    label: 'Medical',
                    icon: Icons.local_hospital,
                    onPressed: () {
                      // Navigate to the HospitalsListPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HospitalsListPage()),
                      );
                    },
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: EmergencyButton(
                    label: 'Weather',
                    icon: Icons.cloud,
                    onPressed: () {

                    },
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

class EmergencyButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  EmergencyButton({required this.label, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 48.0, // Adjust the icon size as needed
          color: Colors.red, // Icon color
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
            elevation: 2.0,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
