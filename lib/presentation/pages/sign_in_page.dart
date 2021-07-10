part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 117),
              Center(child: Text('Welcome!', style: text24)),
              const SizedBox(height: 18),
              CustomTextField(
                controller: usernameController,
                hintText: 'Username',
                prefixIcon: const Icon(Icons.person),
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 18),
              buildForgotPassword(),
              const SizedBox(height: 12),
              // !Login Button
              CustomPrimaryButton(
                onPressed: () {},
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child:
                    Text("Login", style: text14.copyWith(color: Colors.white)),
              ),
              const SizedBox(height: 24),
              // !Register Buton
              CustomSecondaryButton(
                onPressed: () {},
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Register', style: text14),
              ),
              const SizedBox(height: 40),
              buildCustomDivider(),
              const SizedBox(height: 20),
              CustomSecondaryButton(
                onPressed: () {},
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Image.asset('assets/google.png'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Text(
            "   or   ",
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildForgotPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Forgot password?',
          style: text14.copyWith(
            color: blackColor.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 46,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: pinkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'Login',
          style: text14.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 46,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: pinkColor),
          primary: Colors.white,
          onPrimary: pinkColor,
        ),
        child: Text('Register', style: text14),
      ),
    );
  }

  Widget buildLoginWithGoogleButton() {
    return Container(
      width: double.infinity,
      height: 46,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: pinkColor),
          primary: Colors.white,
          onPrimary: pinkColor,
        ),
        child: Text('Register', style: text14),
      ),
    );
  }
}
