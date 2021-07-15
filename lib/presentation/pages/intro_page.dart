part of 'pages.dart';

final List<PageViewModel> listIntroPageView = [
  PageViewModel(
    title: "First Intro Page",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.asset("assets/intro1.png", height: 175.0),
    ),
  ),
  PageViewModel(
    title: "Second Intro Page",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.asset("assets/intro2.png", height: 175.0),
    ),
  ),
  PageViewModel(
    title: "Third Intro Page",
    body:
        "Here you can write the description of the page, to explain someting...",
    image: Center(
      child: Image.asset("assets/intro3.png", height: 175.0),
    ),
  )
];

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: listIntroPageView,
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        next: const Icon(Icons.arrow_forward),
        onDone: () {
          Get.offAll(const SignInPage());
        },
        dotsDecorator: DotsDecorator(
          activeColor: pinkColor,
          activeSize: const Size(20.0, 10.0),
        ),
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.w500)),
        skipColor: blackColor.withOpacity(0.8),
        doneColor: pinkColor,
        nextColor: pinkColor,
      ),
    );
  }
}
