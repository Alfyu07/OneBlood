part of 'pages.dart';

final List<PageViewModel> listIntroPageView = [
  PageViewModel(
    title: "",
    body: "Aksi kemanusiaan tertinggi\nadalah melakukan donor darah. ",
    image: Center(
      child: Image.asset("assets/intro1.png", height: 175.0),
    ),
    decoration: const PageDecoration(
        titlePadding: EdgeInsets.zero, imagePadding: EdgeInsets.only(top: 80)),
  ),
  PageViewModel(
    title: "",
    body:
        "Dengan melakukan donor darah kita dapat menolong orang-orang yang terkena musibah dan membantu menolong nyawa mereka agar terselamatkan.",
    image: Center(
      child: Image.asset("assets/intro2.png", height: 175.0),
    ),
    decoration: const PageDecoration(
        titlePadding: EdgeInsets.zero, imagePadding: EdgeInsets.only(top: 80)),
  ),
  PageViewModel(
    title: "",
    body: "Mari membantu sesama dengan melakukan Donor Darah!",
    image: Center(
      child: Image.asset("assets/intro3.png", height: 175.0),
    ),
    decoration: const PageDecoration(
        titlePadding: EdgeInsets.zero, imagePadding: EdgeInsets.only(top: 80)),
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
          activeColor: mainColor,
          activeSize: const Size(20.0, 10.0),
        ),
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.w500)),
        skipColor: blackColor.withOpacity(0.8),
        doneColor: mainColor,
        nextColor: mainColor,
      ),
    );
  }
}
