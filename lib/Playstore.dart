import 'dart:async';

import 'package:flutter/material.dart';
import 'package:playstoreui/Appstore.dart';

import 'package:provider/provider.dart';

class Playstore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Playstorestate();
  }
}

late TabController controller;

class Playstorestate extends State<Playstore>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> App = [
    {
      'name': 'Snapchat',
      'img': 'Assates/snap.png',
      'rate': '3.9',
      'work': 'Communication • Social',
      'memory': '70 MB',
    },
    {
      'name': 'Facebook',
      'img': 'Assates/fb.png',
      'rate': '4.0',
      'work': 'Social • Networking',
      'memory': '78 MB',
    },
    {
      'name': 'Instagram Lite',
      'img': 'Assates/il.png',
      'rate': '3.8',
      'work': 'Social • Networking',
      'memory': '2.5 MB',
    },
    {
      'name': 'Phonepe UPI ,Payment',
      'img': 'Assates/pe.png',
      'rate': '4.4',
      'work': 'Finance • Digital wallets',
      'memory': '46 MB',
    },
    {
      'name': 'Whatsapp Business',
      'img': 'Assates/wb.png',
      'rate': '4.1',
      'work': 'Communication • Video chat',
      'memory': '46 MB',
    },
    {
      'name': 'Shopsy Shopping App',
      'img': 'Assates/Shopsy.jpg',
      'rate': '4.1',
      'work': 'Shopping • Online marketplace',
      'memory': '14 MB',
    },
    {
      'name': 'Where is my Train',
      'img': 'Assates/wimt.png',
      'rate': '4.4',
      'work': 'Travel & Local • Transportation',
      'memory': '14 MB',
    },
  ];
  List<Map<String, dynamic>> Kidapp = [
    {
      'name': 'Temple Run',
      'rate': '4.3',
      'img': 'Assates/kl1.jpg',
    },
    {
      'name': 'Subway Suffers',
      'rate': '4.2',
      'img': 'Assates/kl2.jpeg',
    },
    {
      'name': 'Piano Music',
      'rate': '3.8',
      'img': 'Assates/kl3.jpeg',
    },
    {
      'name': 'Barbie color',
      'rate': '3.5',
      'img': 'Assates/kl4.jpg',
    },
    {
      'name': 'Hill Climb',
      'rate': '4.1',
      'img': 'Assates/kl5.jpeg',
    },
  ];
  List<Map<String, dynamic>> cat = [
    {
      'img': 'Assates/watch.png',
      'name': 'Watch apps',
    },
    {
      'img': 'Assates/fine-arts.png',
      'name': 'Art & Design',
    },
    {
      'img': 'Assates/car.png',
      'name': 'Auto & Vehicles',
    },
    {
      'img': 'Assates/brush.png',
      'name': 'Beauty',
    },
    {
      'img': 'Assates/book (1).png',
      'name': 'Books & Reference',
    },
    {
      'img': 'Assates/growth.png',
      'name': 'Business',
    },
    {
      'img': 'Assates/comic.png',
      'name': 'Comics',
    },
    {
      'img': 'Assates/like.png',
      'name': 'Dating',
    },
    {
      'img': 'Assates/mortarboard.png',
      'name': 'Education',
    },
    {
      'img': 'Assates/popcorn.png',
      'name': 'Entertainment',
    },
    {
      'img': 'Assates/calendar.png',
      'name': 'Events',
    },
    {
      'img': 'Assates/stock-exchange-app.png',
      'name': 'Finance',
    },
    {
      'img': 'Assates/cardiology.png',
      'name': 'Health & Fitness',
    },
    {
      'img': 'Assates/home.png',
      'name': 'House & Home',
    },
    {
      'img': 'Assates/health.png',
      'name': 'Lifestyle',
    },
    {
      'img': 'Assates/placeholder.png',
      'name': 'Maps & Navigation',
    },
    {
      'img': 'Assates/medical-symbol.png',
      'name': 'Medical',
    },
    {
      'img': 'Assates/sound-waves.png',
      'name': 'Music & Audio',
    },
    {
      'img': 'Assates/adjustments.png',
      'name': 'Personalization',
    },
    {
      'img': 'Assates/photo-camera.png',
      'name': 'Photography',
    },
    {
      'img': 'Assates/family.png',
      'name': 'Parenting',
    },
    {
      'img': 'Assates/productivity.png',
      'name': 'Productivity',
    },
    {
      'img': 'Assates/processing.png',
      'name': 'Shopping',
    },
    {
      'img': 'Assates/social-media.png',
      'name': 'Social',
    },
    {
      'img': 'Assates/tools.png',
      'name': 'Tools',
    },
    {
      'img': 'Assates/travel-and-tourism.png',
      'name': 'Travel & Local',
    },
    {
      'img': 'Assates/play.png',
      'name': 'Video Players & Editors',
    },
  ];
  int cp = 0;
  Timer? _timer;
  PageController controller1 = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (cp < 5) {
        cp++;
      } else {
        cp = 0;
      }
      controller1.animateToPage(cp,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
    });
    controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff111B22),
            title: Container(
              height: 40,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Search apps &...',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.mic_none,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Appstore(),
                      ));
                    },
                    icon: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.grey,
                      size: 25,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 32,
                  width: 32,
                  child: Center(
                    child: Text(
                      'R',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          SliverAppBar(
            backgroundColor: Color(0xff111B22),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: TabBar(
                controller: controller,
                indicatorColor: Color(0xff869EC3),
                labelColor: Color(0xff869EC3),
                unselectedLabelColor: Colors.grey,
                labelPadding: EdgeInsets.only(left: 15, right: 20),
                isScrollable: true,
                labelStyle: TextStyle(
                  fontSize: 17,
                ),
                tabs: [
                  Tab(
                    text: 'For you',
                  ),
                  Tab(
                    text: 'Top charts',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                  Tab(
                    text: 'Categories',
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    child: TabBarView(controller: controller, children: [
                      Scaffold(
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 320,
                                child: PageView(
                                  scrollDirection: Axis.horizontal,
                                  controller: controller1,
                                  children: [
                                    Pageviewimages('Assates/SS1.png'),
                                    Pageviewimages('Assates/SS2.png'),
                                    Pageviewimages('Assates/SS3.png'),
                                    Pageviewimages('Assates/SS4.png'),
                                    Pageviewimages('Assates/SS5.png'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Rowofapp(
                                    'Suggested for you', Icons.more_vert,
                                    d: true),
                              ),
                              Rowofapp('Populer apps', Icons.arrow_forward),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Events Happening now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Container(
                                height: 320,
                                child: PageView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Pageviewimages('Assates/SS1.png'),
                                    Pageviewimages('Assates/SS2.png'),
                                    Pageviewimages('Assates/SS3.png'),
                                    Pageviewimages('Assates/SS4.png'),
                                    Pageviewimages('Assates/SS5.png'),
                                  ],
                                ),
                              ),
                              Rowofapp(
                                  'Share photos & videos', Icons.arrow_forward),
                              Rowofapp(
                                  'Social networking', Icons.arrow_forward),
                              Rowofapp('Suggested for you', Icons.more_vert,
                                  d: true),
                              Rowofapp('Communication', Icons.arrow_forward),
                              Rowofapp(
                                  "Editors' Choice apps", Icons.arrow_forward),
                              Rowofapp("Go shopping", Icons.arrow_forward),
                              Rowofapp("Business tools", Icons.arrow_forward),
                              Rowofapp('Suggested for you', Icons.more_vert,
                                  d: true),
                              Rowofapp('Travel & local', Icons.arrow_forward),
                              Rowofapp('Budgeting tools', Icons.arrow_forward),
                              Rowofapp('Entertainment', Icons.arrow_forward),
                              Rowofapp('Music & audio', Icons.arrow_forward),
                              Rowofapp(
                                  'Food and drink apps', Icons.arrow_forward),
                              Rowofapp(
                                  'Take better photos', Icons.arrow_forward),
                              Rowofapp(
                                  'Edit videos like apro', Icons.arrow_forward),
                              Rowofapp('Video editors & players',
                                  Icons.arrow_forward),
                              Rowofapp(
                                  'Edit photos like apro', Icons.arrow_forward),
                              Rowofapp('Mobile browsers', Icons.arrow_forward),
                              Rowofapp('Video chatting', Icons.arrow_forward),
                              Rowofapp('Get a ride', Icons.arrow_forward),
                              Rowofapp('Maps & GPS', Icons.arrow_forward),
                              Rowofapp(
                                  'Tools & utilities', Icons.arrow_forward),
                              Rowofapp('Government apps & citizen services',
                                  Icons.arrow_forward),
                              Rowofapp(
                                  'Watch TV & movies', Icons.arrow_forward),
                              Rowofapp('Change your look', Icons.arrow_forward),
                            ],
                          ),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      Scaffold(
                        body: Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: GestureDetector(
                                      onTap: () => Fortopfree(),
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 130,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.check_rounded,
                                                color: Color(0xffA2D3F4),
                                                size: 15,
                                              ),
                                              Text(
                                                'Top free',
                                                style: TextStyle(
                                                  color: Color(0xffA2D3F4),
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xffA2D3F4),
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xff004977),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: GestureDetector(
                                      onTap: () => Forcategories(),
                                      child: Container(
                                        height: 40,
                                        width: 130,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Categories',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black,
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView(
                                  children: [
                                    Funofbody(0, 1),
                                    Funofbody(1, 2),
                                    Funofbody(2, 3),
                                    Funofbody(3, 4),
                                    Funofbody(4, 5),
                                    Funofbody(5, 6),
                                    Funofbody(6, 7),
                                    Funofbody(0, 8),
                                    Funofbody(1, 9),
                                    Funofbody(2, 10),
                                    Funofbody(3, 11),
                                    Funofbody(4, 12),
                                    Funofbody(5, 13),
                                    Funofbody(6, 14),
                                    Funofbody(0, 15),
                                    Funofbody(1, 16),
                                    Funofbody(2, 17),
                                    Funofbody(3, 18),
                                    Funofbody(4, 19),
                                    Funofbody(5, 20),
                                    Funofbody(6, 21),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: Colors.black,
                      ),
                      Scaffold(
                        backgroundColor: Colors.black,
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 300,
                                  width: double.infinity,
                                  child: Image.asset(
                                    'Assates/ss6.png',
                                    fit: BoxFit.cover,
                                    repeat: ImageRepeat.noRepeat,
                                  )),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30),
                                  child: Text(
                                    'Everything here is Teacher Approved',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    child: Center(
                                      child: Text(
                                        'Learn more',
                                        style: TextStyle(
                                          color: Color(0xff153773),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xffA7C6FA),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 30),
                                child: Text(
                                  'Browse by age',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: [
                                    Textbox('Ages up to 5', 115),
                                    Textbox('Ages 6-8', 95),
                                    Textbox('Ages 9-12', 95),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 10),
                                child: Container(
                                  height: 150,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'Assates/ss8.png',
                                    fit: BoxFit.fill,
                                    repeat: ImageRepeat.noRepeat,
                                  ),
                                ),
                              ),
                              Approw('New & updated'),
                              Stack(
                                children: [
                                  Container(
                                    height: 230,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xff33D5E2),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 12),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 40, top: 60),
                                                child: Opacity(
                                                    child: Image.asset(
                                                      "Assates/Image.png",
                                                      height: 117,
                                                      width: 150,
                                                      fit: BoxFit.contain,
                                                    ),
                                                    opacity: 0.5),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child:
                                        Hader('Encourage kindness', b: false),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 40),
                                            child: Image.asset(
                                              "Assates/kidimg.png",
                                              height: 150,
                                              width: 170,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          for (int j = 0;
                                              j < Kidapp.length;
                                              j++) ...[
                                            Appinfo(
                                              j,b: false,
                                            ),
                                          ],
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Approw('Enriching apps'),
                              Approw('Apps for Kids'),
                              Approw('Games for Kids'),
                              Container(
                                height: 220,
                                child: PageView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Imagespageview('Assates/ss9.png'),
                                    Imagespageview('Assates/ss10.png'),
                                    Imagespageview('Assates/ss11.png'),
                                  ],
                                ),
                              ),
                              Approw('Enriching apps'),
                            ],
                          ),
                        ),
                      ),
                      Scaffold(
                        backgroundColor: Colors.black,
                        body: SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int i = 0; i < cat.length; i++) ...[
                                Catagorielist(i),
                              ]
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Consumer<click>(
        builder: (context, provider, child) {
          return Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Colors.black,
                primaryColor: Colors.black,
              ),
              child: BottomNavigationBar(
                iconSize: 20,
                unselectedItemColor: Colors.grey,
                selectedLabelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
                selectedItemColor: Colors.white,
                currentIndex: currentin,
                onTap: (value) {
                  provider.onclick(value);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.games), label: 'Games'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.apps), label: 'Apps'),
                  BottomNavigationBarItem(
                    icon: currentin == 2
                        ? Icon(Icons.local_offer)
                        : Icon(Icons.local_offer_outlined),
                    label: "Offers",
                  ),
                  BottomNavigationBarItem(
                    icon: currentin == 3
                        ? Icon(Icons.book)
                        : Icon(Icons.book_outlined),
                    label: "Books",
                  ),
                ],
              ));
        },
      ),
    );
  }

  Widget Pageviewimages(String a) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(a),
              fit: BoxFit.fill,
              repeat: ImageRepeat.noRepeat),
        ),
      ),
    );
  }

  Widget Rowofapp(String a, IconData b, {bool d = false}) {
    return Column(
      children: [
        Heder1(a, b, c: d),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int j = 0; j < App.length; j++) ...[
                  Applist(j),
                ]
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget Heder1(String a, IconData b, {bool c = false}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  c ? 'Sponsored • ' : '',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                Text(
                  a,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            )),
          ),
          Icon(
            b,
            size: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget Applist(int i) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8, top: 12),
      child: Container(
        height: 160,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      App[i]['img'],
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5),
              child: Text(
                App[i]['name'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  Text(
                    App[i]['rate'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Funofbody(int i, int j) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                '$j',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(App[i]['img']),
                      fit: BoxFit.cover,
                      repeat: ImageRepeat.noRepeat),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    App[i]['name'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    App[i]['work'],
                    style: TextStyle(
                        fontSize: 15, color: Colors.white70, height: 2),
                  ),
                  Row(
                    children: [
                      Text(
                        App[i]['rate'],
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white70,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          App[i]['memory'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
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

  PersistentBottomSheetController Forcategories() {
    return showBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (context) {
        return Column(
          children: [
            AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
              title: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Textfortopfree('All categories', b: false),
                        ),
                        for (int i = 0; i < cat.length - 1; i++) ...[
                          Funforcat(i)
                        ],
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Funforcat(26, c: false),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  PersistentBottomSheetController Fortopfree() {
    return showBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Top charts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Textfortopfree('Top free', b: false),
                ),
                Textfortopfree('Top grossing'),
                Textfortopfree('Top paid', c: false),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget Funforcat(int i, {bool c = true}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        height: 70,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(c ? 0 : 10),
            bottomRight: Radius.circular(c ? 0 : 10),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 40,
                width: 40,
                child: Image.asset(
                  cat[i]['img'],
                  repeat: ImageRepeat.noRepeat,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                cat[i]['name'],
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Textfortopfree(String a, {bool b = true, bool c = true}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        height: 70,
        width: 500,
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10),
          child: Text(
            a,
            style: TextStyle(
              color: b ? Colors.white : Color(0xffA2D3F4),
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: b ? Colors.black : Color(0xff004977),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(b ? 0 : 10),
            topLeft: Radius.circular(b ? 0 : 10),
            bottomLeft: Radius.circular(c ? 0 : 10),
            bottomRight: Radius.circular(c ? 0 : 10),
          ),
          border: Border.all(color: Colors.white),
        ),
      ),
    );
  }

  Widget Imagespageview(String a) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(a),
              fit: BoxFit.contain,
              repeat: ImageRepeat.noRepeat),
        ),
      ),
    );
  }

  Widget Hader(String a, {bool b = true}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            a,
            style: TextStyle(
              color: b ? Colors.white : Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            size: 20,
            color: b ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }

  Widget Textbox(String a, double b) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 37,
        width: b,
        child: Center(
          child: Text(
            a,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xff131314),
          border: Border.all(
            color: Colors.white70,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }

  Widget Appinfo(int i, {bool b = true}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8, top: 12),
      child: Container(
        height: 170,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      Kidapp[i]['img'],
                    ),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 5),
              child: Text(
                Kidapp[i]['name'],
                style: TextStyle(
                  color: b ? Colors.white : Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  Text(
                    Kidapp[i]['rate'],
                    style: TextStyle(
                      color: b ? Colors.white : Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: b ? Colors.white : Colors.black,
                    size: 8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Approw(String a, {bool b = true}) {
    return Column(
      children: [
        b ? Hader(a) : Container(),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int j = 0; j < Kidapp.length; j++) ...[
                  Appinfo(
                    j,
                  ),
                ]
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget Catagorielist(int i) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: 40,
              width: 40,
              child: Image.asset(
                cat[i]['img'],
                repeat: ImageRepeat.noRepeat,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              cat[i]['name'],
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int currentin = 0;

class click extends ChangeNotifier {
  void onclick(int i) {
    currentin = i;
    notifyListeners();
  }
}
//
// class Foryou extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Foryoustate();
//   }
// }
//
// class Foryoustate extends State<Foryou> {
//   int cp = 0;
//   Timer? _timer;
//   PageController controller1 = PageController(initialPage: 0);
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
//       if (cp < 5) {
//         cp++;
//       } else {
//         cp = 0;
//       }
//       controller1.animateToPage(cp,
//           duration: Duration(seconds: 1), curve: Curves.easeIn);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 320,
//               child: PageView(
//                 scrollDirection: Axis.horizontal,
//                 controller: controller1,
//                 children: [
//                   Pageviewimages('Assates/SS1.png'),
//                   Pageviewimages('Assates/SS2.png'),
//                   Pageviewimages('Assates/SS3.png'),
//                   Pageviewimages('Assates/SS4.png'),
//                   Pageviewimages('Assates/SS5.png'),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Rowofapp('Suggested for you', Icons.more_vert, d: true),
//             ),
//             Rowofapp('Populer apps', Icons.arrow_forward),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 'Events Happening now',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Container(
//               height: 320,
//               child: PageView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Pageviewimages('Assates/SS1.png'),
//                   Pageviewimages('Assates/SS2.png'),
//                   Pageviewimages('Assates/SS3.png'),
//                   Pageviewimages('Assates/SS4.png'),
//                   Pageviewimages('Assates/SS5.png'),
//                 ],
//               ),
//             ),
//             Rowofapp('Share photos & videos', Icons.arrow_forward),
//             Rowofapp('Social networking', Icons.arrow_forward),
//             Rowofapp('Suggested for you', Icons.more_vert, d: true),
//             Rowofapp('Communication', Icons.arrow_forward),
//             Rowofapp("Editors' Choice apps", Icons.arrow_forward),
//             Rowofapp("Go shopping", Icons.arrow_forward),
//             Rowofapp("Business tools", Icons.arrow_forward),
//             Rowofapp('Suggested for you', Icons.more_vert, d: true),
//             Rowofapp('Travel & local', Icons.arrow_forward),
//             Rowofapp('Budgeting tools', Icons.arrow_forward),
//             Rowofapp('Entertainment', Icons.arrow_forward),
//             Rowofapp('Music & audio', Icons.arrow_forward),
//             Rowofapp('Food and drink apps', Icons.arrow_forward),
//             Rowofapp('Take better photos', Icons.arrow_forward),
//             Rowofapp('Edit videos like apro', Icons.arrow_forward),
//             Rowofapp('Video editors & players', Icons.arrow_forward),
//             Rowofapp('Edit photos like apro', Icons.arrow_forward),
//             Rowofapp('Mobile browsers', Icons.arrow_forward),
//             Rowofapp('Video chatting', Icons.arrow_forward),
//             Rowofapp('Get a ride', Icons.arrow_forward),
//             Rowofapp('Maps & GPS', Icons.arrow_forward),
//             Rowofapp('Tools & utilities', Icons.arrow_forward),
//             Rowofapp('Government apps & citizen services', Icons.arrow_forward),
//             Rowofapp('Watch TV & movies', Icons.arrow_forward),
//             Rowofapp('Change your look', Icons.arrow_forward),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
//
//   Widget Pageviewimages(String a) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         height: 300,
//         width: 400,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: DecorationImage(
//               image: AssetImage(a),
//               fit: BoxFit.fill,
//               repeat: ImageRepeat.noRepeat),
//         ),
//       ),
//     );
//   }
//
//   Widget Rowofapp(String a, IconData b, {bool d = false}) {
//     return Column(
//       children: [
//         Heder1(a, b, c: d),
//         Padding(
//           padding: const EdgeInsets.only(left: 12),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 for (int j = 0; j < App.length; j++) ...[
//                   Applist(j),
//                 ]
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget Heder1(String a, IconData b, {bool c = false}) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//                 child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   c ? 'Sponsored • ' : '',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.normal,
//                     fontSize: 10,
//                   ),
//                 ),
//                 Text(
//                   a,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             )),
//           ),
//           Icon(
//             b,
//             size: 20,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget Applist(int i) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 8.0, left: 8, top: 12),
//       child: Container(
//         height: 160,
//         width: 100,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     image: AssetImage(
//                       App[i]['img'],
//                     ),
//                     fit: BoxFit.cover,
//                     repeat: ImageRepeat.noRepeat,
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, left: 5),
//               child: Text(
//                 App[i]['name'],
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 10,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 5.0),
//               child: Row(
//                 children: [
//                   Text(
//                     App[i]['rate'],
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 10,
//                     ),
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Colors.white,
//                     size: 8,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Topcharts extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Topchartsstate();
//   }
// }
//
// class Topchartsstate extends State<Topcharts> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 10, right: 10),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 15),
//                   child: GestureDetector(
//                     onTap: () => Fortopfree(),
//                     child: Center(
//                       child: Container(
//                         height: 40,
//                         width: 130,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(
//                               Icons.check_rounded,
//                               color: Color(0xffA2D3F4),
//                               size: 15,
//                             ),
//                             Text(
//                               'Top free',
//                               style: TextStyle(
//                                 color: Color(0xffA2D3F4),
//                                 fontSize: 15,
//                               ),
//                             ),
//                             Icon(
//                               Icons.arrow_drop_down,
//                               color: Color(0xffA2D3F4),
//                               size: 15,
//                             ),
//                           ],
//                         ),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Color(0xff004977),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8.0),
//                   child: GestureDetector(
//                     onTap: () => Forcategories(),
//                     child: Container(
//                       height: 40,
//                       width: 130,
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Categories',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                               ),
//                             ),
//                             Icon(
//                               Icons.arrow_drop_down,
//                               color: Colors.white,
//                               size: 15,
//                             ),
//                           ],
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.black,
//                         border: Border.all(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   Funofbody(0, 1),
//                   Funofbody(1, 2),
//                   Funofbody(2, 3),
//                   Funofbody(3, 4),
//                   Funofbody(4, 5),
//                   Funofbody(5, 6),
//                   Funofbody(6, 7),
//                   Funofbody(0, 8),
//                   Funofbody(1, 9),
//                   Funofbody(2, 10),
//                   Funofbody(3, 11),
//                   Funofbody(4, 12),
//                   Funofbody(5, 13),
//                   Funofbody(6, 14),
//                   Funofbody(0, 15),
//                   Funofbody(1, 16),
//                   Funofbody(2, 17),
//                   Funofbody(3, 18),
//                   Funofbody(4, 19),
//                   Funofbody(5, 20),
//                   Funofbody(6, 21),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
//
//   Widget Funofbody(int i, int j) {
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 14),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 '$j',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Container(
//                 height: 70,
//                 width: 70,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: AssetImage(App[i]['img']),
//                       fit: BoxFit.cover,
//                       repeat: ImageRepeat.noRepeat),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     App[i]['name'],
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w300,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Text(
//                     App[i]['work'],
//                     style: TextStyle(
//                         fontSize: 15, color: Colors.white70, height: 2),
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         App[i]['rate'],
//                         style: TextStyle(
//                           fontSize: 13,
//                           color: Colors.white70,
//                         ),
//                       ),
//                       Icon(
//                         Icons.star,
//                         color: Colors.grey,
//                         size: 5,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 5.0),
//                         child: Text(
//                           App[i]['memory'],
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   PersistentBottomSheetController Forcategories() {
//     return showBottomSheet(
//       backgroundColor: Colors.black,
//       context: context,
//       builder: (context) {
//         return Column(
//           children: [
//             AppBar(
//               backgroundColor: Colors.black,
//               automaticallyImplyLeading: false,
//               leading: IconButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: Icon(Icons.close),
//               ),
//               title: Text(
//                 'Categories',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15),
//                 child: SizedBox(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 20),
//                           child: Textfortopfree('All categories', b: false),
//                         ),
//                         for (int i = 0; i < cat.length - 1; i++) ...[
//                           Funforcat(i)],
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 20),
//                           child: Funforcat(26, c: false),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   PersistentBottomSheetController Fortopfree() {
//     return showBottomSheet(
//       backgroundColor: Colors.black,
//       context: context,
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             height: 300,
//             color: Colors.black,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Text(
//                     'Top charts',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 20),
//                   child: Textfortopfree('Top free', b: false),
//                 ),
//                 Textfortopfree('Top grossing'),
//                 Textfortopfree('Top paid', c: false),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   Widget Funforcat(int i, {bool c = true}) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 8.0, right: 8),
//       child: Container(
//         height: 70,
//         width: 500,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           border: Border.all(color: Colors.white),
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(c ? 0 : 10),
//             bottomRight: Radius.circular(c ? 0 : 10),
//           ),
//         ),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 child: Image.asset(
//                   cat[i]['img'],
//                   repeat: ImageRepeat.noRepeat,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 cat[i]['name'],
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget Textfortopfree(String a, {bool b = true, bool c = true}) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 8.0, right: 8),
//       child: Container(
//         height: 70,
//         width: 500,
//         child: Padding(
//           padding: const EdgeInsets.only(top: 25, left: 10),
//           child: Text(
//             a,
//             style: TextStyle(
//               color: b ? Colors.white : Color(0xffA2D3F4),
//               fontWeight: FontWeight.normal,
//               fontSize: 15,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: b ? Colors.black : Color(0xff004977),
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(b ? 0 : 10),
//             topLeft: Radius.circular(b ? 0 : 10),
//             bottomLeft: Radius.circular(c ? 0 : 10),
//             bottomRight: Radius.circular(c ? 0 : 10),
//           ),
//           border: Border.all(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
//
// class Kids extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Kidsstate();
//   }
// }
//
// class Kidsstate extends State<Kids> {
//   List<Map<String,dynamic>> Kidapp=[
//     {
//       'name':'Temple Run',
//       'rate':'4.3',
//       'img' :'Assates/kl1.jpg',
//     },
//     {
//       'name':'Subway Suffers',
//       'rate':'4.2',
//       'img' :'Assates/kl2.jpeg',
//     },
//     {
//       'name':'Piano Music',
//       'rate':'3.8',
//       'img' :'Assates/kl3.jpeg',
//     },
//     {
//       'name':'Barbie color',
//       'rate':'3.5',
//       'img' :'Assates/kl4.jpg',
//     },
//     {
//       'name':'Hill Climb',
//       'rate':'4.1',
//       'img' :'Assates/kl5.jpeg',
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//                 height: 300,
//                 width: double.infinity,
//                 child: Image.asset('Assates/ss6.png',fit: BoxFit.cover,repeat: ImageRepeat.noRepeat,)),
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 30,right: 30),
//                 child: Text(
//                   'Everything here is Teacher Approved',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 23,
//                   ),),
//               ),
//             ),
//             Center(
//               child:Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Container(
//                   height: 50,
//                   width: 150,
//                   child: Center(
//                     child: Text(
//                       'Learn more',
//                       style: TextStyle(
//                         color: Color(0xff153773),
//                       ),
//                     ),
//                   ),
//                   decoration: BoxDecoration(
//                     color: Color(0xffA7C6FA),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20,top: 30),
//               child: Text('Browse by age',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w600,
//               ),),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 15,top: 20),
//               child: Row(
//                 children: [
//                   Textbox('Ages up to 5',115),
//                   Textbox('Ages 6-8',95),
//                   Textbox('Ages 9-12',95),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
//               child: Container(
//                 height: 150,
//                 width: 400,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10)
//                 ),
//                 child: Image.asset('Assates/ss8.png',fit: BoxFit.fill,repeat: ImageRepeat.noRepeat,),
//               ),
//             ),
//             Approw('New & updated'),
//             Approw('Enriching apps'),
//             Approw('Apps for Kids'),
//             Approw('Games for Kids'),
//             Container(
//               height: 220,
//               child: PageView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Imagespageview('Assates/ss9.png'),
//                   Imagespageview('Assates/ss10.png'),
//                   Imagespageview('Assates/ss11.png'),
//                 ],
//               ),
//             ),
//             Approw('Enriching apps'),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget Imagespageview(String a){
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         height: 150,
//         width: 400,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           image: DecorationImage(
//               image: AssetImage(a),
//               fit: BoxFit.contain,
//               repeat: ImageRepeat.noRepeat),
//         ),
//       ),
//     );
//   }
//
//   Widget Hader(String a){
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//                 a,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w400,
//                   fontSize: 20,
//                 ),
//               ),
//           Icon(
//             Icons.arrow_forward,
//             size: 20,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget Textbox(String a,double b){
//     return Padding(
//       padding: const EdgeInsets.only(left: 8.0),
//       child: Container(
//         height: 37,
//         width:  b,
//         child: Center(
//           child: Text(
//             a,
//             style: TextStyle(
//               color: Colors.white70,
//               fontSize: 15,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: Color(0xff131314),
//           border: Border.all(
//             color: Colors.white70,
//           ),
//           borderRadius: BorderRadius.circular(7),
//         ),
//       ),
//     );
//   }
//
//   Widget Appinfo(int i){
//     return Padding(
//       padding: const EdgeInsets.only(right: 8.0, left: 8, top: 12),
//       child: Container(
//         height: 170,
//         width: 100,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                     image: AssetImage(
//                       Kidapp[i]['img'],
//                     ),
//                     fit: BoxFit.cover,
//                     repeat: ImageRepeat.noRepeat,
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, left: 5),
//               child: Text(
//                 Kidapp[i]['name'],
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 5.0),
//               child: Row(
//                 children: [
//                   Text(
//                     Kidapp[i]['rate'],
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 15,
//                     ),
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: Colors.white,
//                     size: 8,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget Approw(String a){
//     return Column(
//       children: [
//         Hader(a),
//         Padding(
//           padding: const EdgeInsets.only(left: 12),
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 for (int j = 0; j < Kidapp.length; j++) ...[
//                   Appinfo(j),
//                 ]
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
//
// class Categiries extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Categiriesstate();
//   }
// }
//
// class Categiriesstate extends State<Categiries> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             for (int i = 0; i < cat.length; i++) ...[
//               Catagorielist(i),
//             ]
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget Catagorielist(int i) {
//     return Padding(
//       padding: const EdgeInsets.all(20),
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Container(
//               height: 40,
//               width: 40,
//               child: Image.asset(
//                 cat[i]['img'],
//                 repeat: ImageRepeat.noRepeat,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               cat[i]['name'],
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
