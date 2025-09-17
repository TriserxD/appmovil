import 'package:flutter/material.dart';
import 'dart:io'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion personal"),
        actions: [
          IconButton(
            icon: Icon(Icons.power_settings_new), 
            onPressed: () {
              exit(0); 
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            
            SizedBox(
              width: 120,
              height: 120,
              child: Image.network(
                "https://www.pngkey.com/png/detail/573-5739600_handsome-squidward-png-clipart-squidward-tentacles-handsome-squidward.png", 
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Nared Ameth Carvajal Conquett",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 9),
                Text("tecnico de sistemas"),
                SizedBox(height: 9),
                Text("123456789"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: "git",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phishing ),
            label: "Linkedin",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "Twiter",
          ),
        ],
        
      ),
    );
  }
}
