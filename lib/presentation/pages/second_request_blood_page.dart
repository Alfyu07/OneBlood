part of 'pages.dart';

class SecondRequestPage extends StatefulWidget {
  final DonorRequest request;
  const SecondRequestPage({Key? key, required this.request}) : super(key: key);

  @override
  _SecondRequestPageState createState() => _SecondRequestPageState();
}

class _SecondRequestPageState extends State<SecondRequestPage> {
  TextEditingController locationController = TextEditingController();
  TextEditingController provinsiController = TextEditingController();
  TextEditingController locationRawatContoller = TextEditingController();
  TextEditingController cityContoller = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

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
                controller: locationRawatContoller,
                hintText: 'Lokasi Pasien Dirawat',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: locationController,
                hintText: 'Lokasi Donor Darah',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: provinsiController,
                hintText: 'Provinsi',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: cityContoller,
                hintText: 'Kabupaten/Kota',
              ),
              SizedBox(height: edge),
              CustomTextField(
                controller: descriptionController,
                hintText: 'Keterangan',
              ),
              SizedBox(height: edge),
              CustomPrimaryButton(
                  onPressed: () {
                    widget.request.copyWith(
                      location: locationController.text,
                      description: descriptionController.text,
                    );
                    print(widget.request);
                    mockDonorRequest.add(widget.request);
                    Get.to(() => const MainPage());
                  },
                  child: const Text('Ajukan Permintaan'))
            ],
          ),
        ),
      ),
    );
  }
}
