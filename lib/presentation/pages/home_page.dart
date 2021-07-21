part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(child: SizedBox(height: 40)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 36,
                  height: 36,
                  child: CircleAvatar(
                    backgroundColor: grayColor,
                    backgroundImage: const NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/220px-Pierre-Person.jpg'),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.notifications_outlined),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Text(
              'One Blood',
              style: blackTextStyle.copyWith(fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Text(
              'Permintaan Darah',
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
          ),
          const SizedBox(height: 20),
          //* NOTE : SEARCH
          Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoSearchTextField(
                    placeholder: 'Pencarian',
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: bgColor,
                    ),
                    prefixInsets: const EdgeInsets.only(left: 10),
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 36,
                    width: 41,
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: bgColor,
                    ),
                    child: const Icon(Icons.sort),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            // TODO : CEK apakah donor list kosong
            //* column donor list
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (DonorRequest e in mockDonorRequest)
                    GestureDetector(
                      onTap: () => Get.to(() => DonorRequestDetail(request: e)),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: DonorListItem(request: e),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
