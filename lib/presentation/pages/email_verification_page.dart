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
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        title: Text(
          'Verifikasi Email',
          style: blackTextStyle.copyWith(fontSize: 18),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Text(
                    'Please, Enter Your Verification Code\nWe have sent code to your email:\nm**********ny@gmail.com',
                    style: greyTextStyle,
                  ),
                ),
                const SizedBox(height: 90),
                //!Pin TextField
                PinCodeTextField(
                  appContext: context,
                  controller: emailVerifController,
                  keyboardType: TextInputType.number,
                  length: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  onChanged: (value) => emailVerifController.text = value,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  pinTheme: PinTheme(
                    activeColor: mainColor,
                    selectedColor: mainColor,
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
                    primary: mainColor,
                  ),
                  child: const Text('Kirim ulang code'),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCompletedVerify(String value, TextEditingController controller) {
    controller.text = value;
    //TODO request ke Api

    Get.to(() => const MainPage());

    return;
  }
}
