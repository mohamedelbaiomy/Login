import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = '';

  getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      email = pref.getString('emo') ?? 'empty';
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/10.png'),
              ),
              accountName: Text(
                "Mohamed Elbaiomy",
                style: TextStyle(
                  fontFamily: 'Dosis',
                  fontSize: 25,
                ),
              ),
              accountEmail: Text("mohamedelbaiomy262003@gmail.com"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Whatsapp ( $email )",
          style: const TextStyle(
            fontFamily: 'Dosis',
            letterSpacing: 2,
          ),
        ),
        actions: [
          Row(
            children: const [
              Icon(Icons.search),
              SizedBox(width: 15),
              Icon(Icons.message),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/57.jpg'),
              ),
              title: const Text(
                "Ahmed Elsayed",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.call),
                  Text(
                    "رد بسرعه",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: const Text(
                "03:48 am",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/67.jpg'),
              ),
              title: const Text(
                "Eng Ibrahim",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "ازيك ؟",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "1",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/82.jpg'),
              ),
              title: const Text(
                "Eng Ammar",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: const Text(
                "01:50 am",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/100.jpg'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/67.jpg'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/10.png'),
              ),
              title: const Text(
                "Mohamed Elbaiomy",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all_outlined),
                  Text(
                    "Hello my friend",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "03:48 am",
                    style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
          ],
        ),
      ),
    );
  }
}
