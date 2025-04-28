
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget2 extends StatelessWidget {
  const HomeScreenWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          left: 41,
          right: 85,
        ),
        child: Container(
          width: 249,
          height: 26,
          color: Colors.white,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: '"Cold and Cough"',
              hintStyle: TextStyle(
                fontSize: 8.69,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
              ),
              suffixIcon: Icon(Icons.mic_none_sharp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(width: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
