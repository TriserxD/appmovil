import 'package:flutter/material.dart';
import 'dart:io'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion"),
        actions: [
          IconButton(
            icon: const Icon(Icons.power_settings_new), 
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
                "https://splavia1.unitecnar.edu.co/pluginfile.php/344477/user/icon/eguru/f1?rev=4882673", // reemplazar con tu URL real
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
        onTap: (index) {
          
          if (index == 0) {
            print("GitHub");
          } else if (index == 1) {
            print("LinkedIn");
          } else if (index == 2) {
            print("No tengo :,(");
          }
        },
      ),
    );
  }
}