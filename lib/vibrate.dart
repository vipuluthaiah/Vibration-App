import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vibration/vibration.dart';
import 'package:vibrator/nxbox.dart';
import 'dart:async';

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _cancel = false;
    return Scaffold(
      backgroundColor: mC,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: NMButton(
                          icon: Icons.arrow_back,
                        )),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.exclamationCircle),
                      onTap: () {},
                    ),
                  ],
                ),
                // AvatarImage(),
                SizedBox(height: 30),

                Flexible(
                    child: Lottie.network(
                  "https://assets1.lottiefiles.com/temporary_files/SpHkfp.json",
                  fit: BoxFit.fill,
                )),
                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Timer.periodic(
                            const Duration(seconds: 1),
                            (Timer timer) {
                              if (_cancel) {
                                timer.cancel();
                                _cancel = false;
                                return false;
                              }
                              return Vibration.vibrate(duration: 1000);
                            },
                          );
                        },
                        child: AvatarImage()),
                    SizedBox(width: 28),
                    InkWell(
                        onTap: () {
                          _cancel = true;
                        },
                        child: AvatarImage2()),
                  ],
                ),

                // Column(
                //   children: [
                //     Center(
                //       child: Text(
                //         '',
                //         style: TextStyle(
                //             fontSize: 30, fontWeight: FontWeight.w700),
                //       ),
                //     ),
                //     Center(
                //       child: Text(
                //         '  ',
                //         style: TextStyle(
                //             fontSize: 27, fontWeight: FontWeight.w700),
                //       ),
                //     ),
                //   ],
                // ),
                // Text(
                //   '',
                //   style: TextStyle(fontWeight: FontWeight.w200),
                // ),
                // SizedBox(height: 15),
                // Flexible(
                //   child: Text(
                //     '',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(fontSize: 18),
                //   ),
                // ),
                SizedBox(height: 9),
                Center(
                  child: Text(
                    'SPEED OPTIONS',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 9),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: NMButton(icon: FontAwesomeIcons.rocket),
                        onTap: () {
                          Timer.periodic(
                            const Duration(seconds: 1),
                            (Timer timer) {
                              if (_cancel) {
                                timer.cancel();
                                _cancel = false;
                                return false;
                              }
                              return Vibration.vibrate(duration: 1000);
                            },
                          );
                        }),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.fighterJet),
                      onTap: () {
                        Timer.periodic(
                          const Duration(seconds: 1),
                          (Timer timer) {
                            if (_cancel) {
                              timer.cancel();
                              _cancel = false;
                              return false;
                            }
                            return Vibration.vibrate(
                              duration: 1000,
                              pattern: [
                                500,
                                1000,
                                500,
                                2000,
                                500,
                                3000,
                                500,
                                500
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.random),
                      onTap: () {
                        Timer.periodic(
                          const Duration(seconds: 1),
                          (Timer timer) {
                            if (_cancel) {
                              timer.cancel();
                              _cancel = false;
                              return false;
                            }
                            return Vibration.vibrate(
                              duration: 1000,
                              intensities: [128, 255, 64, 255],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.heart),
                      onTap: () {
                        Timer.periodic(
                            Duration(seconds: 1),
                            (t) => Vibration.vibrate(
                                  duration: 1000,
                                  pattern: [
                                    500,
                                    1000,
                                    500,
                                    2000,
                                    500,
                                    3000,
                                    500,
                                    500
                                  ],
                                  intensities: [128, 255, 64, 255],
                                ));
                      },
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: NMButton(icon: FontAwesomeIcons.fire),
                        onTap: () {
                          Timer.periodic(
                            const Duration(seconds: 1),
                            (Timer timer) {
                              if (_cancel) {
                                timer.cancel();
                                _cancel = false;
                                return false;
                              }
                              return Vibration.vibrate(
                                duration: 1000,
                                pattern: [2000, 500, 3000, 500, 500],
                              );
                            },
                          );
                        }),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.exclamation),
                      onTap: () {
                        Timer.periodic(
                          const Duration(seconds: 1),
                          (Timer timer) {
                            if (_cancel) {
                              timer.cancel();
                              _cancel = false;
                              return false;
                            }
                            return Vibration.vibrate(
                              duration: 1000,
                              pattern: [
                                500,
                                1000,
                                500,
                                2000,
                                500,
                                3000,
                                500,
                                500,
                                100,
                                4000
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.bolt),
                      onTap: () {
                        Timer.periodic(
                          const Duration(seconds: 1),
                          (Timer timer) {
                            if (_cancel) {
                              timer.cancel();
                              _cancel = false;
                              return false;
                            }
                            return Vibration.vibrate(
                              duration: 1000,
                              pattern: [
                                500,
                                1000,
                                500,
                                2000,
                                500,
                                3000,
                                500,
                                500,
                                2000,
                                500,
                                1000
                              ],
                              intensities: [
                                128,
                                255,
                                64,
                                255,
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(width: 25),
                    InkWell(
                      child: NMButton(icon: FontAwesomeIcons.bomb),
                      onTap: () {
                        Timer.periodic(
                          const Duration(seconds: 1),
                          (Timer timer) {
                            if (_cancel) {
                              timer.cancel();
                              _cancel = false;
                              return false;
                            }
                            return Vibration.vibrate(
                              duration: 1000,
                              intensities: [
                                128,
                                255,
                                64,
                                255,
                                400,
                                100,
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text(
                            'If Your phone dont stop vibrating clear the app',
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                        _cancel = true;
                      },
                      textColor: Colors.white,
                      color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(
                        "KILL BUTTON",
                      ),
                    ),
                  ),
                ),
                // Row(
                //   children: <Widget>[
                //     SocialBox(
                //         icon: FontAwesomeIcons.dribbble,
                //         count: '35',
                //         category: 'shots'),
                //     SizedBox(width: 15),
                //     SocialBox(
                //         icon: FontAwesomeIcons.userAlt,
                //         count: '1.2k',
                //         category: 'followers'),
                //   ],
                // ),

                SizedBox(height: 2),
              ],
            ),
          ),
          // DraggableScrollableSheet(
          //   initialChildSize: 0.17,
          //   minChildSize: 0.07,
          //   maxChildSize: 0.4,
          //   builder: (BuildContext context, scroll) {
          //     return Container(
          //       decoration: nMbox,
          //       child: ListView(
          //         controller: scroll,
          //         children: <Widget>[
          //           Center(
          //             child: Column(
          //               children: <Widget>[
          //                 Padding(
          //                   padding: const EdgeInsets.only(
          //                     top: 1,
          //                   ),
          //                   child: Icon(Icons.share, color: fCL),
          //                 ),
          //                 Text(
          //                   'Share',
          //                   style: TextStyle(
          //                       fontSize: 28, fontWeight: FontWeight.w700),
          //                 ),
          //                 SizedBox(height: 15),
          //                 Text(
          //                   'Swipe Up To Share This App',
          //                   textAlign: TextAlign.center,
          //                 ),
          //                 SizedBox(height: 35),
          //                 Container(
          //                   width: 225,
          //                   padding: EdgeInsets.all(10),
          //                   decoration: nMboxInvert,
          //                   child: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                     children: <Widget>[
          //                       InkWell(
          //                         child: Icon(FontAwesomeIcons.facebookF,
          //                             color: fCL),
          //                         onTap: () {
          //                           // final RenderBox box =
          //                           //     context.findRenderObject();
          //                           // Share.share(
          //                           //     "Check Out Vibro A Dating App for Kodavas !https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     subject:
          //                           //         "https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     sharePositionOrigin:
          //                           //         box.localToGlobal(Offset.zero) &
          //                           //             box.size);
          //                         },
          //                       ),
          //                       InkWell(
          //                         child: Icon(FontAwesomeIcons.twitter,
          //                             color: fCL),
          //                         onTap: () {
          //                           // final RenderBox box =
          //                           //     context.findRenderObject();
          //                           // Share.share(
          //                           //     "Check Out Vibro A Dating App for Kodavas ! https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     subject:
          //                           //         "https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     sharePositionOrigin:
          //                           //         box.localToGlobal(Offset.zero) &
          //                           //             box.size);
          //                         },
          //                       ),
          //                       InkWell(
          //                         child: Icon(FontAwesomeIcons.instagram,
          //                             color: fCL),
          //                         onTap: () {
          //                           // final RenderBox box =
          //                           //     context.findRenderObject();
          //                           // Share.share(
          //                           //     "Check Out Vibro A Dating App for Kodavas   ! https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     subject:
          //                           //         "https://play.google.com/store/apps/details?id=com.Ko.Ko",
          //                           //     sharePositionOrigin:
          //                           //         box.localToGlobal(Offset.zero) &
          //                           //             box.size);
          //                         },
          //                       ),
          //                       InkWell(
          //                         child: Icon(FontAwesomeIcons.whatsapp,
          //                             color: fCL),
          //                         onTap: () {
          //                           // final RenderBox box =
          //                           //     context.findRenderObject();
          //                           // Share.share(
          //                           //   "Check Out Vibro A Dating App for Kodavas            !https://play.google.com/store/apps/details?id=com.Ko.Ko ",
          //                           //   subject: "Share This App",
          //                           //   sharePositionOrigin:
          //                           //       box.localToGlobal(Offset.zero) &
          //                           //           box.size,
          //                           // );
          //                         },
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //                 SizedBox(height: 25),
          //                 FaIcon(
          //                   FontAwesomeIcons.copy,
          //                   color: Colors.pink.shade800,
          //                 ),
          //                 InkWell(
          //                   child: Text(
          //                     'Copy link',
          //                   ),
          //                   onTap: () async {
          //                     Clipboard.setData(new ClipboardData(
          //                         text:
          //                             "Check Out Vibro A Dating App for Kodavas ! https://play.google.com/store/apps/details?id=com.Ko.Ko"));
          //                   },
          //                 ),
          //               ],
          //             ),
          //           )
          //         ],
          //       ),
          //     );
          //   },
          // )
        ],
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
  final IconData icon;
  final String count;
  final String category;

  const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(icon, color: Colors.pink.shade800, size: 20),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
            ),
          ],
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  const NMButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                // image: AssetImage('assets/avatar.JPG'),
                image: new NetworkImage("https://i.imgur.com/tEL8dMd.png")),
          ),
        ),
      ),
    );
  }
}

class AvatarImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                // image: AssetImage('assets/avatar.JPG'),
                image: new NetworkImage("https://i.imgur.com/8m06uNe.png")),
          ),
        ),
      ),
    );
  }
}
