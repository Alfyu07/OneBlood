part of 'widgets.dart';

class CustomPrimaryButton extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final Widget child;
  const CustomPrimaryButton({
    Key? key,
    this.margin,
    required this.onPressed,
    required this.child,
    this.width = double.infinity,
    this.height = 46,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}
