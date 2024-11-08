import 'package:flutter/material.dart';
import 'package:ui_test_1/pages/page_three.dart';

// ignore: must_be_immutable
class PageFour extends StatelessWidget {
  PageFour({super.key});

  final List<User> user = [
    User(
      name: 'Yehan',
      email: 'yehan@gmail.com',
      imageUrl:
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
    ),
    User(
      name: 'Yehan',
      email: 'yehan@gmail.com',
      imageUrl:
          'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Daftar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
          final pengguna = user[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(pengguna.imageUrl),
            ),
            title: Text(pengguna.name),
            subtitle: Text(pengguna.email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const PageThree();
            },
          ));
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class User {
  late String name;
  late String email;
  late String imageUrl;

  User({required this.name, required this.email, required this.imageUrl});
}
