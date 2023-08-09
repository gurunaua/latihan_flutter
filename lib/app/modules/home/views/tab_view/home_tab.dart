import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
      'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
      'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
      'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      NetworkImage(item),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Devon Lane",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text("Kepala Sekolah - Fri 13/01/23, 14:17"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text("Libur Sekolah",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                Expanded(
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                    style: TextStyle(fontSize: 12),
                    softWrap: false,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis, // new
                  ),
                ),
              ],
            )))
        .toList();

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            // color: Colors.grey,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/home/home_tab/orang.png"),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Arlene McCoy",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Kiddy B - Rose Room",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Expanded(
                    child: SizedBox(
                  width: 1,
                )),
                Container(
                  height: 100,
                  width: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        child: Image.asset(
                          "assets/home/home_tab/lonceng.png",
                          height: 30,
                          width: 30,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                          top: 15,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              "12",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(45))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Clock-In",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      "07:36",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Container(height: 40, width: 2, color: Colors.white),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Clock-Out",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      "07:36",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Container(height: 40, width: 2, color: Colors.white),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      "--:--",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: double.infinity,
            child: Text("Announcement",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 1.0,
                      scrollDirection: Axis.horizontal,
                      aspectRatio: 2.3,
                      autoPlay: true),
                  items: imageSliders,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
