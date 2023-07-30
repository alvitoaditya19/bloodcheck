import 'package:booldcheck/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img-health.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Nilai Standar Gula Darah',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: semiBold)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Gula Darah Sewaktu',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xffFB0000).withOpacity(0.17),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Rendah',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '<70.0',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff5617A7).withOpacity(0.22),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Normal',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '<140',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff2356D8).withOpacity(0.17),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Pradiabetes',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '<140-199',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xffFF9C07).withOpacity(0.27),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Diabetes',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            ' ≥200',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Gula Darah Puasa',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xffFF9C07).withOpacity(0.27),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Rendah',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '<72.0',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Color(0xff175A25).withOpacity(0.19),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Normal',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '<100',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                                        color: Color(0xffFB0000).withOpacity(0.17),

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Pradiabetes',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '100-126',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
                  decoration: BoxDecoration(
                                       color: Color(0xff5617A7).withOpacity(0.22),

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Diabetes',
                            style: blackTextStyle.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '≥126.0',
                            style: blackTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
              SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
