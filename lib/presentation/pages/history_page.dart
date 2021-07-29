part of 'pages.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// Header
            const SizedBox(height: 20),
            Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: edge),
              padding: EdgeInsets.symmetric(horizontal: edge),
              color: Colors.white,
              child: Text(
                'Riwayat',
                style: blackTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            //// Body
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: const ['Permintaan Darah', 'Donor Darah'],
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
                  if (selectedIndex == 0)
                    Column(
                      children: mockDonorRequest
                          .where((element) => element.user == mockUser[0])
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    right: edge, left: edge, bottom: 16),
                                child: GestureDetector(
                                  child: buildPermintaanItem(e),
                                ),
                              ))
                          .toList(),
                    )
                  else
                    Column(
                        children: mockDonor
                            .map(
                              (e) => Padding(
                                padding: EdgeInsets.only(
                                    right: edge, left: edge, bottom: 16),
                                child: buildDonorItem(e),
                              ),
                            )
                            .toList()),
                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildPermintaanItem(DonorRequest e) {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 60,
              height: 60,
              child: Image.network(e.user!.picturePath!, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e.resipienName!,
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffD5574F),
                      ),
                      child: Text('Terkumpul : ${e.bloodFullfilled}',
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffD5574F),
                      ),
                      child: Text(
                          'Tersisa : ${e.bloodNeeds! - e.bloodFullfilled!}',
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300)),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildDonorItem(Donor e) {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 60,
              height: 60,
              child: Image.network(e.user!.picturePath!, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 10),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e.request!.resipienName!,
                  style: blackTextStyle.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffD5574F),
                    ),
                    child: e.status == DonorStatus.complete
                        ? Text('Complete',
                            style: whiteTextStyle.copyWith(fontSize: 12))
                        : Text('Progress',
                            style: whiteTextStyle.copyWith(fontSize: 12))),
                const SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
