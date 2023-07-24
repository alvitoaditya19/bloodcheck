part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  FirebaseService firebaseService = FirebaseService();
  String dataDariFirebase = '';

  @override
  void initState() {
    super.initState();
    firebaseService.getDataStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/img-rs.png',
                    ),
                  ),
                ),
              ),
              Text(
                'Blood Sugar',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: StreamBuilder<DatabaseEvent>(
                  stream: firebaseService.getDataStream(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DatabaseEvent> snapshot) {
                    if (snapshot.hasData && snapshot.data != null) {
                      // Process the data
                      dataDariFirebase =
                          snapshot.data!.snapshot.value.toString();
                    }
                    return Text(
                      '$dataDariFirebase mg/dL',
                      style: whiteTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    );
                  },
                ),
              ),
                SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<PageBloc>().add(GoToRecentPage());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff2034E3),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Recent',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 58,
                            width: 90,
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<PageBloc>().add(GoToInformasiPage());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff2034E3),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Informasi',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 58,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img-info.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
