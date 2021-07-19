part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool passwordObscure = true;
  bool confirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
          'Registration',
          style: blackTextStyle.copyWith(fontSize: 18),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 32),
              //! Full name text field
              CustomTextField(
                controller: fullNameController,
                hintText: 'Full Name',
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 26),
              //! Username text field
              CustomTextField(
                controller: userNameController,
                hintText: 'Username',
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 26),
              //! Email text field
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                margin: const EdgeInsets.symmetric(horizontal: 40),
              ),
              const SizedBox(height: 26),
              //! Password text field
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: passwordObscure,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                suffixIcon: IconButton(
                  onPressed: () =>
                      setState(() => passwordObscure = !passwordObscure),
                  icon: passwordObscure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 26),
              //! Password Confirmation text field
              CustomTextField(
                controller: confirmPasswordController,
                hintText: 'Password Confirmation',
                obscureText: confirmPasswordObscure,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                suffixIcon: IconButton(
                  onPressed: () => setState(
                      () => confirmPasswordObscure = !confirmPasswordObscure),
                  icon: confirmPasswordObscure
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              ),
              const SizedBox(height: 40),
              CustomPrimaryButton(
                onPressed: () async {
                  final OkCancelResult result = await showOkCancelAlertDialog(
                    context: context,
                    message:
                        "Are you sure you have filled in your personal data correctly?",
                    okLabel: 'Yes',
                    cancelLabel: 'No',
                    isDestructiveAction: true,
                  );
                  if (result == OkCancelResult.ok) {
                    Get.to(() => const EmailVerificationPage());
                  } else {}
                },
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Register',
                  style: whiteTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
