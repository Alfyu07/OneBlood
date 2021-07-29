part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            Container(
                padding: EdgeInsets.symmetric(horizontal: edge),
                height: 220,
                margin: EdgeInsets.only(bottom: edge),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(mockUser[0].picturePath!),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      mockUser[0].name!,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      mockUser[0].email!,
                      style:
                          greyTextStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                )),
            //// Body
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: const ["Account", "OneBlood"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: ((selectedIndex == 0)
                            ? [
                                'Edit Profile',
                                'Home Address',
                                'Security',
                                'Payment'
                              ]
                            : [
                                'Rate App',
                                'Help Center',
                                'Privacy & Policy',
                                'Term & Condition'
                              ])
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  bottom: 16, left: edge, right: edge),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e,
                                    style: blackTextStyle,
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image.asset(
                                      'assets/right_arrow.png',
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ],
    );
  }
}
