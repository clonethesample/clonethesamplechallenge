import 'package:clone_challenge_no_1/ui/authenticate_page.dart';
import 'package:clone_challenge_no_1/ui/home_page.dart';
import 'package:clone_challenge_no_1/utils/Constants.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DetailArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: Container(
          alignment: Alignment(1, 0),
          child: ClipOval(
            child: Material(
              color: backgroundWhite,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.arrow_back,
                    color: green,
                  ),
                ),
              ),
            ),
          ),
        ),
        // just tricky :)
        title: Row(
          children: <Widget>[
            Expanded(child: Container()),
            ClipOval(
              child: Material(
                color: backgroundWhite,
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.more_horiz,
                    color: green,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Image.asset(args.thumbnail),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    BoxInfoWidget(title: 'Height', info: '22°'),
                    BoxInfoWidget(title: 'Plant', info: 'Italian'),
                    BoxInfoWidget(title: 'Rating', info: '4.9'),
                    BoxInfoWidget(title: 'Warmth', info: '15 cc'),
                  ],
                ),
              )
            ],
          ),
          VerticalSpace20(),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: backgroundLightGrey),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      args.title,
                      style: TextStyle(
                        color: green,
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    VerticalSpace10(),
                    Text(
                      'Secundum and Volum: Three lamps that are constructed by the same principles and yet every lamp stands out.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textDarkGrey,
                        fontSize: 20,
                        height: 1.5,
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: colorButtonBuy,
                        child: Text(
                          'Buy Now - ${args.price}',
                          style: TextStyle(
                            color: textWhite,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    VerticalSpace40()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BoxInfoWidget extends StatelessWidget {
  const BoxInfoWidget({
    Key key,
    this.title,
    this.info,
  }) : super(key: key);

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              color: textDarkGrey, fontSize: 20, fontWeight: FontWeight.w300),
        ),
        VerticalSpace10(),
        Container(
          width: 75,
          height: 60,
          alignment: Alignment(0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.5, color: colorBoxInfo),
          ),
          child: Text(
            info,
            style: TextStyle(
                color: colorBoxInfo, fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ),
        VerticalSpace10(),
      ],
    );
  }
}
