import 'package:booldcheck/models/data_info_gula_model.dart';
import 'package:booldcheck/shared/shared.dart';
import 'package:flutter/material.dart';

class DetailInfoPage extends StatelessWidget {
  final DataInfoGulaModel data;

  DetailInfoPage({required this.data});

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/img-bg-info.png'),
                  ),
                ),
              ),
              Text(
                data.data1,
                style:
                    whiteTextStyle.copyWith(fontSize: 30, fontWeight: semiBold),
              ),
              Text(
                data.data4,
                style:
                    whiteTextStyle.copyWith(fontSize: 30, fontWeight: semiBold),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    data.data2,
                    style: blackTextStyle.copyWith(
                        fontSize: 22, fontWeight: medium),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      // Add Expanded here
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(data.subData1.length, (index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                              Expanded(
                                // Add Expanded here
                                child: Text(
                                  data.subData1[index],
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      // Add Expanded here for the second column as well
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(data.subData2.length, (index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                              Expanded(
                                // Add Expanded here
                                child: Text(
                                  data.subData2[index],
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    data.data3,
                    style: blackTextStyle.copyWith(
                        fontSize: 22, fontWeight: medium),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      // Add Expanded here
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(data.subData3.length, (index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                              Expanded(
                                // Add Expanded here
                                child: Text(
                                  data.subData3[index],
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      // Add Expanded here for the second column as well
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(data.subData4.length, (index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• ",
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: medium,
                                ),
                              ),
                              Expanded(
                                // Add Expanded here
                                child: Text(
                                  data.subData4[index],
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
