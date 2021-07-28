part of 'widgets.dart';

class CustomDropdown extends StatefulWidget {
  final String value;
  final List<String> items;
  final Function(String? newValue)? onChanged;
  const CustomDropdown({
    Key? key,
    this.onChanged,
    required this.value,
    required this.items,
  }) : super(key: key);

  @override
  CustomDropdownState createState() => CustomDropdownState();
}

class CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: grayColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: grayColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.only(
          left: edge,
          right: 10,
        ),
      ),
      value: widget.value,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 0,
      style: greyTextStyle.copyWith(fontSize: 16),
      onChanged: widget.onChanged,
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
