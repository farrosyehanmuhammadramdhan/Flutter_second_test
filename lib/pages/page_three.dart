import 'package:flutter/material.dart';
import 'package:ui_test_1/pages/page_four.dart';
import 'package:ui_test_1/pages/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Tambah Data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Image',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const PageTwo();
                    },
                  ));
                },
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return PageFour();
                    },
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data telah diperbarui'))
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
