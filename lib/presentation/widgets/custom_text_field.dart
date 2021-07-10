part of 'widgets.dart';

class CustomTextField extends StatelessWidget {
  final double height;
  final String? hintText;
  final TextEditingController controller;
  final EdgeInsetsGeometry? margin;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    this.height = 46,
    required this.controller,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
    this.margin = EdgeInsets.zero,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      child: TextFormField(
        obscureText: obscureText,
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.2),
          ),
          contentPadding:
              EdgeInsets.only(top: 20, left: (prefixIcon == null) ? 20 : 0),
        ),
      ),
    );
  }
}
