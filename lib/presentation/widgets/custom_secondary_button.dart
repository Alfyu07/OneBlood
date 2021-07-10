part of 'widgets.dart';

class CustomSecondaryButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final VoidCallback onPressed;
  const CustomSecondaryButton(
      {Key? key, required this.child, this.margin, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(color: pinkColor),
          primary: Colors.white,
          onPrimary: pinkColor,
        ),
        child: child,
      ),
    );
  }
}
