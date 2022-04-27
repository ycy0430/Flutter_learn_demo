import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("测试页面"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 200,
            //   height: 100,
            //   color: Colors.blue,
            // ),

            Image.network(
                "https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/90c6cc12-742e-4c9f-b318-b912f163b8d0.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/ab17e8f9-6b79-450b-8079-0f2287eb6f0f.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/fb0ea461-e00a-482b-814f-4faca5761427.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/62c1bd68-b5f3-4a3c-a649-7ca8c7dfabe6.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/00f83f1d-3c50-439f-b705-54a49fc3d90d.jpg",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/50c115c2-cf6c-4802-aa7b-a4334de444cd.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/90c6cc12-742e-4c9f-b318-b912f163b8d0.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/ab17e8f9-6b79-450b-8079-0f2287eb6f0f.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/fb0ea461-e00a-482b-814f-4faca5761427.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/62c1bd68-b5f3-4a3c-a649-7ca8c7dfabe6.png",
                fit: BoxFit.cover),
            Image.network(
                "https://www.wanandroid.com/blogimgs/00f83f1d-3c50-439f-b705-54a49fc3d90d.jpg",
                fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
