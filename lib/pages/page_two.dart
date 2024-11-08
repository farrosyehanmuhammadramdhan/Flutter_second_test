import 'package:flutter/material.dart';
import 'package:ui_test_1/pages/page_four.dart';
import 'package:ui_test_1/pages/page_three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_960_720.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                  'Praesent accumsan massa ut tempus faucibus. Sed tincidunt, odio sed sagittis luctus, nulla ante commodo odio, sit amet tristique lorem elit quis arcu. Praesent urna libero, scelerisque ac sem eu, consequat pharetra dolor. Mauris leo enim, vulputate id molestie a, bibendum id purus. Sed ultrices purus vel magna lobortis molestie.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const PageThree();
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text(
                    'Create Data',
                    style: TextStyle(color: Colors.white),
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
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text(
                    'Read Data',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
