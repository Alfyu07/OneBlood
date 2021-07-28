part of 'pages.dart';

class SecondRequestPage extends StatefulWidget {
  const SecondRequestPage({Key? key}) : super(key: key);

  @override
  _SecondRequestPageState createState() => _SecondRequestPageState();
}

class _SecondRequestPageState extends State<SecondRequestPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16, top: 16),
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: edge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                controller: phoneController,
                hintText: 'Lokasi Pasien Dirawat',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: phoneController,
                hintText: 'Lokasi Donor Darah',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: phoneController,
                hintText: 'Provinsi',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: phoneController,
                hintText: 'Kabupaten/Kota',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: phoneController,
                hintText: 'Keterangan',
              ),
              SizedBox(height: edge),
              CustomPrimaryButton(
                  onPressed: () {}, child: const Text('Ajukan Permintaan'))
            ],
          ),
        ),
      ),
    );
  }
}
