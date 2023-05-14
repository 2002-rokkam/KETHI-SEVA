import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:multi_split_view/multi_split_view.dart';

class shopping extends StatefulWidget {
  const shopping({super.key});

  @override
  State<shopping> createState() => _shoppingState();
}

class _shoppingState extends State<shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  height: 880,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Image.asset('assets/image11.jpg'),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  height: 880,
                  color: Colors.yellow,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {},
                    child: Image.asset('assets/image12.jpg'),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
