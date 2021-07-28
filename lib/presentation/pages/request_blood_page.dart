part of 'pages.dart';

class RequestBlood extends StatefulWidget {
  const RequestBlood({Key? key}) : super(key: key);

  @override
  _RequestBloodState createState() => _RequestBloodState();
}

class _RequestBloodState extends State<RequestBlood> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  static List<String> goldars = [
    'Golongan Darah',
    'A+',
    'A-',
    'AB+',
    'AB-',
    'B+',
    'B-',
    'O+',
    'O-'
  ];

  String _goldarValue = goldars.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 22),
                Text('Permintaan Darah',
                    style: blackTextStyle.copyWith(fontSize: 18)),
                const SizedBox(height: 36),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Nama Lengkap Pasien',
                ),
                SizedBox(height: edge),
                CustomTextField(
                  controller: nikController,
                  hintText: 'NIK Pasien',
                ),
                //Goldar dropdown
                SizedBox(height: edge),
                Container(
                  color: whiteColor,
                  height: 46,
                  child: CustomDropdown(
                    value: _goldarValue,
                    items: goldars,
                    onChanged: (newValue) {
                      setState(
                        () => _goldarValue = newValue!,
                      );
                    },
                  ),
                ),
                SizedBox(height: edge),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Jumlah Darah Yang Dibutuhkan',
                ),
                SizedBox(height: edge),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Tanggal Darah Dibutuhkan',
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.date_range)),
                ),
                SizedBox(height: 30),
                CustomSecondaryButton(
                    onPressed: () {
                      Get.to(() => SecondRequestPage());
                    },
                    child: const Text('Selanjutnya')),
                const SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
