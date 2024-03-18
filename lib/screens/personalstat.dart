import 'package:flutter/material.dart';

class ProfileStats extends StatefulWidget {
  const ProfileStats({Key? key}) : super(key: key);

  @override
  _ProfileStatsState createState() => _ProfileStatsState();
}

class _ProfileStatsState extends State<ProfileStats> {
  String userName = "";
  int userAge = 0;
  String userGender = "";
  String userGoals = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController goalsController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    genderController.dispose();
    goalsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: const Color.fromARGB(255, 57, 9, 65),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 130,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/user_avatar.png'), // Replace with your user's avatar image
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to Go Athletics!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: nameController,
                  onChanged: (value) {
                    setState(() {
                      userName = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: ageController,
                  onChanged: (value) {
                    setState(() {
                      userAge = int.tryParse(value) ?? 0;
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Age',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: genderController,
                  onChanged: (value) {
                    setState(() {
                      userGender = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: goalsController,
                  onChanged: (value) {
                    setState(() {
                      userGoals = value;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Personal Goals',
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  print('Name: $userName, Age: $userAge, Gender: $userGender, Goals: $userGoals');
                },
                child: const Text('Save Profile'),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                child: const Text(
                  "Log Out",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
