import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vibrator/vibrate.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MainCard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "To Vibro",
          body:
              " ",
          image: Center(
              child: Lottie.network(
                  "https://assets3.lottiefiles.com/private_files/lf30_FPH6Ci.json")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Using",
          body: "",
          // image: _buildImage('img2'),
          image: Center(
              child: Lottie.network(
                  "https://assets2.lottiefiles.com/private_files/lf30_BfKkV9.json")),

          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Location",
          body:
              "  ",
          image: Center(
              child: Lottie.network(
                  "https://assets4.lottiefiles.com/temp/lf20_JvT50n.json")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Interact ",
          body: "",
          image: Center(
              child: Lottie.network(
                  "https://assets1.lottiefiles.com/packages/lf20_85jUo8.json")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Connection",
          body: "",
          image: Center(
              child: Lottie.network(
                  "https://assets3.lottiefiles.com/datafiles/nZgj7wTd56UtH6m/data.json")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Chat",
          body: "",
          image: Center(
              child: Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_decvxrvx.json")),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Motive",
          body: "",
          image: Center(
              child: Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_a4jt4iqy.json")),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Finish",
          body: "",
          image: Center(
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/private_files/lf30_cvi9bg1a.json")),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Another title page",
        //   body: "Another beautiful body text for this example onboarding",
        //   image: _buildImage('img2'),
        //   footer: RaisedButton(
        //     onPressed: () {
        //       introKey.currentState?.animateScroll(0);
        //     },
        //     child: const Text(
        //       'FooButton',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     color: Colors.lightBlue,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(8.0),
        //     ),
        //   ),
        //   decoration: pageDecoration,
        // ),
        // PageViewModel(
        //   title: "Title of last page",
        //   bodyWidget: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   image: _buildImage('img1'),
        //   decoration: pageDecoration,
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
