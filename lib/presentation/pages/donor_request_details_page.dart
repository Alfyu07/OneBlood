part of 'pages.dart';

class DonorRequestDetail extends StatelessWidget {
  final DonorRequest request;
  const DonorRequestDetail({Key? key, required this.request}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pinkColor,
      appBar: AppBar(
        backgroundColor: pinkColor,
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
                        'Saya sedang mengalami  anemia.  Sudah satu minggu di rumah sakit. Saya butuh bantuan darah. Mohon bantuannya teman-teman. Terima kasih.',
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ),
                    const SizedBox(height: 20),
                    buildBloodInfo(context),
                    const SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: edge),
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [],
                      ),
                    )
                  ],
                ),
              ],
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
