import 'package:darjoraapp/share/Widget/productCard.dart';
import 'package:darjoraapp/share/theme.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Hi',
                style: mainTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Agbar',
                style: mainTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_chart.png',
                width: 24,
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.menu_sharp,
                color: kBlackColor,
                size: 28,
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kWhite2Color,

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 70),
            child: Column(
              children: [
                header(),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelColor: kBlackColor,
                      labelStyle: mainTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                      unselectedLabelColor: kGreyColor,
                      unselectedLabelStyle: mainTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold,
                      ),
                      isScrollable: true,
                      indicator: BoxDecoration(
                        color: kGreyColor2,
                        border: Border.all(color: kBlackColor),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      indicatorColor: Colors.transparent,
                      labelPadding: EdgeInsets.symmetric(horizontal: 44),
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'T-Shirt',
                        ),
                        Tab(
                          text: 'Jersey',
                        ),
                        Tab(
                          text: 'Dress',
                        ),
                        Tab(
                          text: 'Trousers',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 1200,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runSpacing: 18,
                          spacing: 18,
                          children: [
                            ProductCard(),
                            ProductCard(),
                            ProductCard(),
                            ProductCard(),
                          ],
                        ),
                      ),
                      Text('hai'),
                      Text('hai'),
                      Text('hai'),
                      Text('hai'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       margin: EdgeInsets.only(top: 70),
      //       decoration: BoxDecoration(
      //         color: kWhiteColor,
      //         border: Border.all(
      //           color: kBlackColor,
      //         ),
      //       ),
      //       child: TabBar(
      //           indicator: BoxDecoration(
      //             color: kGreyColor,
      //           ),
      //           controller: tabController,
      //           isScrollable: true,
      //           labelPadding: EdgeInsets.symmetric(horizontal: 30),
      //           tabs: [
      //             Tab(
      //               child: Text('all'),
      //             ),
      //             Tab(
      //               child: Text('all'),
      //             ),
      //             Tab(
      //               child: Text('all'),
      //             ),
      //           ]),
      //     ),
      //     Expanded(
      //       child: TabBarView(controller: tabController, children: [
      //         ListView.builder(
      //           physics: BouncingScrollPhysics(),
      //           shrinkWrap: true,
      //           itemCount: 10,
      //           itemBuilder: (context, index) {
      //             return Card(
      //               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //               child: ListTile(
      //                 leading: Text('aaaa'),
      //                 subtitle: Text('aaaa'),
      //                 trailing: Text('aaaa'),
      //               ),
      //             );
      //           },
      //         ),
      //         ListView.builder(
      //           physics: BouncingScrollPhysics(),
      //           shrinkWrap: true,
      //           itemCount: 10,
      //           itemBuilder: (context, index) {
      //             return Card(
      //               margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //               child: ListTile(
      //                 leading: Text('aaaa'),
      //                 subtitle: Text('aaaa'),
      //                 trailing: Text('aaaa'),
      //               ),
      //             );
      //           },
      //         ),
      //         ListView.builder(
      //             physics: BouncingScrollPhysics(),
      //             shrinkWrap: true,
      //             itemCount: 10,
      //             itemBuilder: (context, index) {
      //               return Card(
      //                 margin:
      //                     EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //                 child: ListTile(
      //                   leading: Text('aaaa'),
      //                   subtitle: Text('aaaa'),
      //                   trailing: Text('aaaa'),
      //                 ),
      //               );
      //             }),
      //       ]),
      //     ),
      //   ],
      // ),
    );

// //     return Scaffold(
// //         backgroundColor: kWhiteColor,
// //         body: Padding(
// //           padding:
// //               const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
// //           child: ListView(
// //             children: [
// //               header(),
// //               searchBar(),
// //               Container(
// //                 decoration: BoxDecoration(
// //                   color: kWhiteColor,
// //                   border: Border.all(
// //                     color: kBlackColor,
// //                   ),
// //                 ),
// //                 child: TabBar(
// //                     indicator: BoxDecoration(
// //                       color: kGreyColor,
// //                     ),
// //                     controller: tabController,
// //                     isScrollable: true,
// //                     labelPadding: EdgeInsets.symmetric(horizontal: 30),
// //                     tabs: [
// //                       Tab(
// //                         child: Text('all'),
// //                       ),
// //                       Tab(
// //                         child: Text('all'),
// //                       ),
// //                       Tab(
// //                         child: Text('all'),
// //                       ),
// //                     ]),
// //               ),
// //               Expanded(
// //                 child: TabBarView(
// //                   controller: tabController,
// //                   children: [
// //                     ListView.builder(
// //                       physics: BouncingScrollPhysics(),
// //                       shrinkWrap: true,
// //                       itemCount: 10,
// //                       itemBuilder: (context, index) {
// //                         return Card(
// //                           margin: EdgeInsets.symmetric(
// //                               horizontal: 30, vertical: 10),
// //                           child: ListTile(
// //                             leading: Text('aaaa'),
// //                             subtitle: Text('aaaa'),
// //                             trailing: Text('aaaa'),
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                     ListView.builder(
// //                       physics: BouncingScrollPhysics(),
// //                       shrinkWrap: true,
// //                       itemCount: 10,
// //                       itemBuilder: (context, index) {
// //                         return Card(
// //                           margin: EdgeInsets.symmetric(
// //                               horizontal: 30, vertical: 10),
// //                           child: ListTile(
// //                             leading: Text('aaaa'),
// //                             subtitle: Text('aaaa'),
// //                             trailing: Text('aaaa'),
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                     ListView.builder(
// //                       physics: BouncingScrollPhysics(),
// //                       shrinkWrap: true,
// //                       itemCount: 10,
// //                       itemBuilder: (context, index) {
// //                         return Card(
// //                           margin: EdgeInsets.symmetric(
// //                               horizontal: 30, vertical: 10),
// //                           child: ListTile(
// //                             leading: Text('aaaa'),
// //                             subtitle: Text('aaaa'),
// //                             trailing: Text('aaaa'),
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         )
// //         );
// //   }

// //   Widget searchBar() {
// //     return Container(
// //       margin: EdgeInsets.only(top: 18),
// //       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
// //       decoration: BoxDecoration(
// //         border: Border.all(
// //           color: kGreyColor,
// //         ),
// //         borderRadius: BorderRadius.circular(30),
// //       ),
// //       child: Row(
// //         children: [
// //           Icon(
// //             Icons.search,
// //             color: kGreyColor,
// //           ),
// //           Expanded(
// //             child: TextFormField(
// //               cursorColor: kBlackColor,
// //               decoration: InputDecoration.collapsed(
// //                 hintText: 'search',
// //                 hintStyle: mainTextStyle.copyWith(color: kGreyColor),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget categoryBar() {
// //     TabController tabController = TabController(length: 3, vsync: this);
// //     return Container(
// //       margin: EdgeInsets.only(top: 30),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             'Kategori',
// //             style: subTextStyle.copyWith(
// //               fontSize: 18,
// //               fontWeight: semiBold,
// //             ),
// //           ),
// //           SizedBox(
// //             height: 20,
// //           ),

// // // coba Tabar
// //           Container(
// //             decoration: BoxDecoration(
// //               color: kWhiteColor,
// //               border: Border.all(
// //                 color: kBlackColor,
// //               ),
// //             ),
// //             child: TabBar(
// //                 indicator: BoxDecoration(
// //                   color: kGreyColor,
// //                 ),
// //                 controller: tabController,
// //                 isScrollable: true,
// //                 labelPadding: EdgeInsets.symmetric(horizontal: 15),
// //                 tabs: [
// //                   Tab(
// //                     child: Text('all'),
// //                   ),
// //                   Tab(
// //                     child: Text('all'),
// //                   ),
// //                   Tab(
// //                     child: Text('all'),
// //                   ),
// //                 ]),
// //           ),

// //           Expanded(
// //             child: TabBarView(
// //               controller: tabController,
// //               children: [
// //                 Text('cobaq'),
// //                 Text('cobaq'),
// //                 Text('cobaq'),
// //               ],
// //             ),
// //           )

//           // SingleChildScrollView(
//           //   scrollDirection: Axis.horizontal,
//           //   child: Row(
//           //     children: [
//           //       CategoryBar(text: 'All'),
//           //       CategoryBar(text: 'All'),
//           //       CategoryBar(text: 'All'),
//           //       CategoryBar(text: 'All'),
//           //     ],
//           //   ),
//           // ),
//         ],
//       ),
//     );
  }
}
