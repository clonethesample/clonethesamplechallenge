import 'dart:ui';

import 'package:clone_challenge_no_1/utils/Constants.dart';
import 'package:flutter/material.dart';

class AuthenticatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                    child: Container(
                      height: double.infinity,
                      child: Image.asset(
                        'assets/images/plant_background.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                VerticalSpace10(),
                Container(
                  height: 80,
                  child: Text(
                    'Terms of Service',
                    style: TextStyle(
                      color: textBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Planty\n',
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'increase your natural beauty',
                        style: TextStyle(
                          color: textWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: textWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    VerticalSpace20(),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          color: backgroundWhite,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: textBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VerticalSpace10 extends StatelessWidget {
  const VerticalSpace10({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
    );
  }
}

class VerticalSpace20 extends StatelessWidget {
  const VerticalSpace20({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

class VerticalSpace40 extends StatelessWidget {
  const VerticalSpace40({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
    );
  }
}
