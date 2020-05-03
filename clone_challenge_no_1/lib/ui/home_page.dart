import 'package:clone_challenge_no_1/ui/authenticate_page.dart';
import 'package:clone_challenge_no_1/utils/Constants.dart';
import 'package:flutter/material.dart';

class DetailArguments {
  final String thumbnail;
  final String title;
  final String price;

  DetailArguments(this.thumbnail, this.title, this.price);
}

class HomePage extends StatelessWidget {
  final _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        actions: <Widget>[
          HorizontalSpace10(),
          Stack(children: [
            Image.asset('assets/images/avatar_clone.png'),
            Positioned(
              right: 0,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: green,
                    border: Border.all(width: 1.5, color: backgroundWhite)),
              ),
            )
          ]),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: green,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          VerticalSpace20(),
          Container(
            height: 40,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
              color: backgroundWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: green,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Search Plant',
                hintStyle: TextStyle(fontSize: 16),
              ),
              textInputAction: TextInputAction.search,
              style: TextStyle(
                color: textBlack,
                fontSize: 16,
              ),
            ),
          ),
          VerticalSpace10(),
          Container(
            height: height / 2,
            child: Row(
              children: <Widget>[
                Container(
                  width: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Outdoor',
                              style: TextStyle(
                                  color: green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Indoor',
                              style: TextStyle(
                                  color: colorBoxInfo,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Top',
                              style: TextStyle(
                                  color: colorBoxInfo,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    onPageChanged: (index) {},
                    controller: _pageController,
                    children: <Widget>[
                      PagerItem(
                        thumbnail: 'assets/images/img_plant_1.png',
                        title: 'Outdoor Plant - XS',
                        price: '£345',
                      ),
                      PagerItem(
                        thumbnail: 'assets/images/img_plant_2.png',
                        title: 'Outdoor Plant - XXS',
                        price: '£145',
                      ),
                      PagerItem(
                        thumbnail: 'assets/images/img_plant_3.png',
                        title: 'Outdoor Plant - M',
                        price: '£425',
                      ),
                      PagerItem(
                        thumbnail: 'assets/images/img_plant_4.png',
                        title: 'Outdoor Plant - XS',
                        price: '£814',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              HorizontalSpace10(),
              Text(
                'Popular',
                style: TextStyle(
                  color: colorBoxInfo,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(child: Container()),
              ClipOval(
                child: Material(
                  color: backgroundWhite,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.more_horiz,
                        color: green,
                      ),
                    ),
                  ),
                ),
              ),
              HorizontalSpace10(),
            ],
          ),
          VerticalSpace10(),
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  PopularItem(
                    thumbnail: 'assets/images/img_plant_6.png',
                    title: 'Indoor Plant - M',
                    price: '£125',
                  ),
                  PopularItem(
                    thumbnail: 'assets/images/img_plant_5.png',
                    title: 'Indoor Plant - M',
                    price: '£245',
                  ),
                  PopularItem(
                    thumbnail: 'assets/images/img_plant_4.png',
                    title: 'Outdoor Plant - M',
                    price: '£625',
                  ),
                  PopularItem(
                    thumbnail: 'assets/images/img_plant_3.png',
                    title: 'Outdoor Plant - XS',
                    price: '£725',
                  ),
                ],
              ),
            ),
          ),
          VerticalSpace40()
        ],
      ),
    );
  }
}

class PopularItem extends StatelessWidget {
  const PopularItem({
    Key key, this.thumbnail, this.title, this.price,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final String price;

  navigateToDetailPage(context, thumbnail, title, price) {
    Navigator.pushNamed(context, 'detail',
        arguments: DetailArguments(thumbnail, title, price));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToDetailPage(context, thumbnail, title, price);
      },
      child: SizedBox(
        width: 120,
        child: Image.asset(thumbnail),
      ),
    );
  }
}

class PagerItem extends StatelessWidget {
  const PagerItem({
    Key key,
    this.thumbnail,
    this.title,
    this.price,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final String price;

  navigateToDetailPage(context, thumbnail, title, price) {
    Navigator.pushNamed(context, 'detail',
        arguments: DetailArguments(thumbnail, title, price));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: InkWell(
          onTap: () {
            navigateToDetailPage(context, thumbnail, title, price);
          },
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  thumbnail,
                  height: 300,
                ),
              ),
              VerticalSpace10(),
              Text(
                title,
                style: TextStyle(
                  color: green,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                price,
                style: TextStyle(
                  color: green,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              VerticalSpace20(),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalSpace10 extends StatelessWidget {
  const HorizontalSpace10({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 10);
  }
}
