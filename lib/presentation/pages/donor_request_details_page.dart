part of 'pages.dart';

class DonorRequestDetail extends StatelessWidget {
  final DonorRequest request;
  const DonorRequestDetail({Key? key, required this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: lightRedColor,
      appBar: AppBar(
        backgroundColor: lightRedColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back, color: blackColor),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListView(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(right: edge),
                          width: 43,
                          height: 38,
                          decoration: BoxDecoration(
                            color: const Color(0xffFBE7E7),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Image.asset('assets/chat_icon.png',
                                width: 24, height: 20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Deskripsi',
                          style: blackTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          request.description ?? "-",
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 20),
                      buildBloodInfo(context),
                      const SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        padding: EdgeInsets.symmetric(
                            horizontal: edge, vertical: edge),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Row(children: [
                              Center(
                                child: Icon(
                                  Icons.account_box_outlined,
                                  color: mainColor,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                request.resipienName ?? "null",
                                style: blackTextStyle.copyWith(fontSize: 12),
                              )
                            ]),
                            const SizedBox(height: 12),
                            Row(children: [
                              SizedBox(
                                width: 24,
                                child: Center(
                                  child: Image.asset('assets/date_icon.png'),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                request.date != null
                                    ? "${DateFormat("dd MMMM y").format(DateTime.parse(request.date!))} (dibutuhkan)"
                                    : "Null",
                                style: blackTextStyle.copyWith(fontSize: 12),
                              )
                            ]),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                SizedBox(
                                  width: 24,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icon_location.png',
                                      width: 16,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                SizedBox(
                                  width: 220,
                                  child: Text(
                                    request.location ?? "null",
                                    style:
                                        blackTextStyle.copyWith(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: edge),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                child: CustomSecondaryButton(
                                    onPressed: () {
                                      Get.to(MainPage(initialPage: 2));
                                    },
                                    child: const Text('Lihat Lokasi')),
                              ),
                              SizedBox(
                                width: 150,
                                child: CustomPrimaryButton(
                                    onPressed: () {
                                      final Donor donor = Donor(
                                        id: 8,
                                        request: request,
                                        user: mockUser[0],
                                      );
                                      mockDonor.add(donor);

                                      Get.to(
                                          () => const MainPage(initialPage: 3));
                                    },
                                    child: const Text('Donor')),
                              ),
                            ]),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.86),
            child: SizedBox(
              width: 300,
              height: 108,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 114,
                    height: 108,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter:
                                ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              width: 114,
                              height: 108,
                              color: whiteColor.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              height: 80,
                              width: 77,
                              child: Image.network(
                                request.user!.picturePath ?? "null",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          request.resipienName ?? "Null",
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.clip,
                        ),
                        Text(
                          request.date != null
                              ? DateFormat("dd MMMM y")
                                  .format(DateTime.parse(request.date!))
                              : "Null",
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildBloodInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: edge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 94,
            height: 62,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Permintaan',
                  style: TextStyle(
                    color: Color(0xff983434),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  request.resipienBloodType ?? "-",
                  style: const TextStyle(
                    color: Color(0xff983434),
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 94,
            height: 62,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dibutuhkan',
                  style: TextStyle(
                    color: Color(0xff983434),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  request.bloodNeeds != null
                      ? request.bloodNeeds.toString()
                      : "-",
                  style: const TextStyle(
                    color: Color(0xff983434),
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 94,
            height: 62,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Terpenuhi',
                  style: TextStyle(
                    color: Color(0xff983434),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  request.bloodFullfilled != null
                      ? request.bloodFullfilled.toString()
                      : "-",
                  style: const TextStyle(
                    color: Color(0xff983434),
                    fontSize: 24,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
