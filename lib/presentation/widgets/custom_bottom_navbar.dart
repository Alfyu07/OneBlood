part of 'widgets.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index)? onTap;

  const CustomBottomNavbar({Key? key, this.selectedIndex = 0, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      width: double.infinity,
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //* Home
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(0);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_outlined,
                    color: selectedIndex == 0
                        ? mainColor
                        : const Color(0xffE5E5E5)),
                Text(
                  'Home',
                  style: selectedIndex == 0
                      ? redTextStyle.copyWith(fontSize: 12)
                      : greyTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
          ),
          //* Request

          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(1);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 28,
                  child: Center(
                    child: selectedIndex == 1
                        ? Image.asset('assets/request_icon_active.png')
                        : Image.asset('assets/request_icon.png'),
                  ),
                ),
                Text(
                  'Request',
                  style: selectedIndex == 1
                      ? redTextStyle.copyWith(fontSize: 12)
                      : greyTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
          ),

          //* Mapping

          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(2);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 28,
                  child: Center(
                    child: selectedIndex == 2
                        ? Image.asset('assets/mapping_icon_active.png')
                        : Image.asset('assets/mapping_icon.png'),
                  ),
                ),
                Text(
                  'Request',
                  style: selectedIndex == 2
                      ? redTextStyle.copyWith(fontSize: 12)
                      : greyTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
          ),

          //* Donor
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(3);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 28,
                  child: Center(
                    child: selectedIndex == 3
                        ? Image.asset('assets/donor_icon_active.png')
                        : Image.asset('assets/donor_icon.png'),
                  ),
                ),
                Text(
                  'Donor',
                  style: selectedIndex == 3
                      ? redTextStyle.copyWith(fontSize: 12)
                      : greyTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
          ),

          //* Profile
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(4);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 28,
                  child: Center(
                    child: selectedIndex == 4
                        ? Image.asset('assets/profile_icon_active.png')
                        : Image.asset('assets/profile_icon.png'),
                  ),
                ),
                Text(
                  'Profile',
                  style: selectedIndex == 4
                      ? redTextStyle.copyWith(fontSize: 12)
                      : greyTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
