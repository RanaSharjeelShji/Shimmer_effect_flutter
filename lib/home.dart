import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    dataIsComing();
    super.initState();
  }

  String? data;
  dataIsComing() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      data = "I am data";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Red Clan"),
      ),
      body: Column(
        children: [
          data == null
              ? const CardLoading(
                  height: 100,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 10),
                )
              : Container(
                height: 100,
                width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(
                    child: Text(
                      data!,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )),
        ],
      ),
    );
  }
}
