import 'package:booldcheck/data/data_info_gula.dart';
import 'package:booldcheck/models/data_info_gula_model.dart';
import 'package:booldcheck/pages/detail_info_page.dart';

import 'package:booldcheck/shared/shared.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img-bg1.png'),
              ),
            ),
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "INFO",
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 32,
                        ),
                      ),
                      Container(
                        width: 74,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img-logo.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailInfoPage(
                            data: dataInfoGula[0],
                          ),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                          10.0), // You can adjust the value as needed
                      child: Column(
                        children: [
                          Text(
                            dataInfoGula[0].data1,
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                          Text(
                            dataInfoGula[0].data4,
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailInfoPage(
                            data: dataInfoGula[1],
                          ),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(
                          10.0), // You can adjust the value as needed
                      child: Column(
                        children: [
                          Text(
                            dataInfoGula[1].data1,
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                          Text(
                            dataInfoGula[1].data4,
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
