part of 'pages.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  _EmailVerificationPageState createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  TextEditingController emailVerifController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        title: Text('Email Verification',
            style: text18.copyWith(color: blackColor)),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Center(
                    child: Text('Please, Enter Your Verification Code')),
                const Center(child: Text('We have sent code to your email:')),
                const Center(child: Text('m**********ny@gmail.com')),
                const SizedBox(height: 90),
                //!Pin TextField
                PinCodeTextField(
                  appContext: context,
                  controller: emailVerifController,
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  onChanged: (value) => emailVerifController.text = value,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  pinTheme: PinTheme(
                    activeColor: pinkColor,
                    selectedColor: pinkColor,
                    inactiveColor: Colors.black.withOpacity(0.5),
                    borderWidth: 2,
                    shape: PinCodeFieldShape.underline,
                    fieldOuterPadding:
                        const EdgeInsets.symmetric(horizontal: 2),
                  ),
                  onCompleted: (value) =>
                      onCompletedVerify(value, emailVerifController),
                ),
                const SizedBox(height: 40),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    primary: pinkColor,
                  ),
                  child: const Text('Resend New Code'),
                ),
                const SizedBox(height: 40),
                CustomPrimaryButton(
                  onPressed: () {},
                  child: const Text('Verify'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCompletedVerify(String value, TextEditingController controller) {
    controller.text = value;
    final Random random = Random();
    //TODO request ke Api
    final bool valid = random.nextBool();
    if (valid) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wrong Pin Number, Try Again'),
        ),
      );
      return;
    }
  }
}
