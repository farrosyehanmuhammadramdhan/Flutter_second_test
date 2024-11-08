import 'package:flutter/material.dart';
import 'package:ui_test_1/pages/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png",
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const PageTwo();
                    },
                  ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  'Start',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ))
          ],
        ),
      ),
    );
  }
}
