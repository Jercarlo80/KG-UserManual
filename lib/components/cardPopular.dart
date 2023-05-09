import 'package:flutter/material.dart';
import 'package:kuliner_go_mobile/theme.dart';

class cardPopular extends StatelessWidget {
  final String imagePopular;
  final String restoName;
  final String distance;
  final String time;
  const cardPopular(
      {required this.imagePopular,
      required this.restoName,
      required this.distance,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 290,
        width: 250,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePopular,
                  width: 250,
                  height: 185,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        )),
                    child: Center(
                        child: Image.asset(
                      'assets/star.png',
                      width: 22,
                      height: 22,
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restoName,
                        style: blackTextStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/location.png'),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            distance,
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/time_circle.png'),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            time,
                            style: greyTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
