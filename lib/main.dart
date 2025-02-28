import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CIS 228 Assignment 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _nameController = TextEditingController(text: "Insert name here");
  final TextEditingController _emailController = TextEditingController(text: "Insert email here");

  bool isMusicChecked = false;
  bool isSportsChecked = false;
  bool isReadingChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: 
              Image.asset(
                "assets/images.png",
                width: 200,
                height: 200,
              ),
             

            ),
            const SizedBox(height: 10),
            const Text("Name"),
            TextField(
              controller: _nameController,
              onChanged: (String value) {},
            ),
            const SizedBox(height: 10),
            const Text("Email"),
            TextField(
              controller: _emailController,
              onChanged: (String value) {},
            ),
            const SizedBox(height: 10),
            const Text("Interests"),
            CheckboxListTile(
              title: const Text("Music"),
              value: isMusicChecked,
              onChanged: (bool? value) {
                setState(() {
                  isMusicChecked = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Sports"),
              value: isSportsChecked,
              onChanged: (bool? value) {
                setState(() {
                  isSportsChecked = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Reading"),
              value: isReadingChecked,
              onChanged: (bool? value) {
                setState(() {
                  isReadingChecked = value ?? false;
                });
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
