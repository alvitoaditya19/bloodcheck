part of 'pages.dart';

class MenuPage extends StatefulWidget {
  final int bottomNavBarIndex;
  final url;

  MenuPage({this.bottomNavBarIndex = 0, this.url});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [];
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final fb = FirebaseDatabase.instance;
  TextEditingController _textFieldControllerTanggal = TextEditingController();
  TextEditingController _textFieldControllerWaktu = TextEditingController();

  bool select = false;
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  String name = "1";
  String name1 = "0";
 

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("Node1");

    return Scaffold(
        backgroundColor: Color(0xFFe6f7ff),
        appBar: new AppBar(
          backgroundColor: Color(0xFFe6f7ff),
          centerTitle: true,
          title: Text(
            "Atmosfer_SGD APPS",
            style: GoogleFonts.poppins().copyWith(
              color: blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: StreamBuilder(
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  !snapshot.hasError &&
                  snapshot.data?.snapshot.value != null) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 12.5),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 12, 12.5, 0),
                        child: BlocBuilder<UserBloc, UserState>(
                            builder: (_, userState) {
                          if (userState is UserLoaded) {
                             if (imageFileToUpload != null) {
                  uploadImage(imageFileToUpload!).then((downloadURL) {
                    imageFileToUpload = null;
                    context
                        .read<UserBloc>()
                        .add(UpdateData(profileImage: downloadURL));
                  });
                }
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/button_menu.png',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                2 * defaultMargin -
                                                140,
                                        child: Text(
                                          "Welcome, " + userState.user.name!,
                                          style: blueTextFont.copyWith(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'Be Smart for your\nSmart Home',
                                        style: blackTextFont.copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                        overflow: TextOverflow.clip,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      SpinKitFadingCircle(
                                        color: accentColor2,
                                        size: 50,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<PageBloc>().add(
                                              GoToEditProfilePage(
                                                  (userState as UserLoaded)
                                                      .user));
                                        },
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: blackColor, width: 4),
                                             image: DecorationImage(
                              // image: DecorationImage( image: true ? NetworkImage('someNetWorkLocation.com') : AssetImage('assets/images/noImageAvailable.png') as ImageProvider ),
                              image: (userState.user.profilePicture == ""
                                  ? AssetImage("assets/user_pic.png")
                                      as ImageProvider
                                  : NetworkImage(
                                      userState.user.profilePicture ??
                                          "No Data")),
                              fit: BoxFit.cover),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return SpinKitFadingCircle(
                              color: accentColor2,
                              size: 50,
                            );
                          }
                        }),
                      ),      ],
                  ),
                );
              } else {}
              return SpinKitFadingCircle(
                color: accentColor2,
                size: 90,
              );
            },
            stream: ref.onValue,
          ),
        ));
  }

Future<void> readData() async {
  DatabaseReference reference = FirebaseDatabase.instance.reference();
  DatabaseEvent event = await reference.child("Node1").child("ldr").once();
  DataSnapshot snapshot = event.snapshot;
  print(snapshot.value);
}
}
