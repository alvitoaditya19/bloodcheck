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
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 85,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img-info.png'),
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text(
                    "Informasi  Makanan\nSesuai Standar Gula\nDarah",
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 20,
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
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xffFB0000).withOpacity(0.4)),
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
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff5617A7).withOpacity(0.5),
                  ),
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
    );
  }
}
