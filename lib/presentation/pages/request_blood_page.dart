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
  DateTime selectedDate = DateTime.now();
  TextEditingController dateNeededController = TextEditingController();
  TextEditingController bloodNeedsController = TextEditingController();

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
            padding: const EdgeInsets.all(24),
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
                  controller: bloodNeedsController,
                  hintText: 'Jumlah Darah Yang Dibutuhkan',
                ),
                SizedBox(height: edge),
                CustomTextField(
                  controller: dateNeededController,
                  hintText: 'Tanggal Darah Dibutuhkan',
                  suffixIcon: IconButton(
                      onPressed: () => _selectDate(context),
                      icon: const Icon(Icons.date_range)),
                ),
                const SizedBox(height: 30),
                CustomSecondaryButton(
                    onPressed: () {
                      final DonorRequest req = DonorRequest(
                        id: 7,
                        user: mockUser[0],
                        bloodNeeds: int.parse(bloodNeedsController.text),
                        date: DateFormat('yyyy-MM-dd').format(selectedDate),
                        resipienBloodType: _goldarValue,
                        resipienName: nameController.text,
                      );
                      Get.to(() => SecondRequestPage(request: req));
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

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateNeededController.text =
            DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }
}
