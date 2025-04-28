
import 'package:flutter/material.dart';

class HomeScreenWidget1 extends StatelessWidget {
  const HomeScreenWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 17, top: 5.57),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on_outlined),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Krishna Vihar Colony",
                            style: TextStyle(
                              fontSize: 12.6,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                          Icon(Icons.keyboard_arrow_down, size: 15),
                        ],
                      ),
                      Text(
                        "Home Address, Block D, Street 10, 221198",
                        style: TextStyle(
                          fontSize: 8.57,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 6,
                bottom: 6,
                right: 17,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/image.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
