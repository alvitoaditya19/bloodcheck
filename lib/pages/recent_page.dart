import 'package:booldcheck/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: AppBar(
        backgroundColor: kBlueColor,
        title: Text(
          'Detail Page',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text('Standar gula darah',
                        style: blackTextStyle.copyWith(
                            fontSize: 20, fontWeight: semiBold)),
                  ),
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
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                              '72.0~99.0',
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
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
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                              '99.0~140.0',
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                              '<140.0',
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
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
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                              '72.0~99.0',
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
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
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                              '99.0~126.0',
                              style: blackTextStyle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 30),
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
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img-para.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
