part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool passwordObscure = true;

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
              // !Username textfield
              CustomTextField(
                controller: usernameController,
                hintText: 'Username',
                prefixIcon: const Icon(Icons.person),
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 28),
              // !Password textfield
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: passwordObscure,
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () =>
                      setState(() => passwordObscure = !passwordObscure),
                  icon: passwordObscure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const RegisterPage()));
                },
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Register', style: text14),
              ),
              const SizedBox(height: 40),
              buildCustomDivider(),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'Login with',
                  style: TextStyle(color: blackColor.withOpacity(0.5)),
                ),
              ),
              const SizedBox(height: 20),
              // !Login with google
              CustomSecondaryButton(
                onPressed: () {},
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Image.asset('assets/google.png'),
              ),
              const SizedBox(height: 30),
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
            "     or     ",
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
}
