part of 'models.dart';

enum Status {
  available,
  unAvailable,
}

class User extends Equatable {
  final int id;
  final String username;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? picturePath;
  final String? bloodType;
  final Status? userStatus;
  final String? donorAmount;
  final String? address;
  final String? kecamatan;
  final String? cityRegency;
  final String? province;
  final String? linkToAddress;

  const User({
    required this.id,
    required this.username,
    this.name,
    this.email,
    this.phoneNumber,
    this.picturePath,
    this.bloodType,
    this.userStatus,
    this.donorAmount,
    this.address,
    this.kecamatan,
    this.cityRegency,
    this.province,
    this.linkToAddress,
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'] as int,
        username: data['username'] as String,
        name: data['name'] as String,
        email: data['email'] as String,
        phoneNumber: data['phoneNumber'] as String,
        picturePath: data['photo'] as String,
        bloodType: data['bloodType'] as String,
        donorAmount: data['donorAmount'] as String,
        address: data['address'] as String,
        kecamatan: data['kecamatan'] as String,
        cityRegency: data['city_regency'] as String,
        province: data['province'] as String,
        linkToAddress: data['linkToAddress'] as String,
        userStatus: data['mode'] as String == 'donor'
            ? Status.available
            : Status.unAvailable,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        username,
        name,
        email,
        phoneNumber,
        picturePath,
        bloodType,
        userStatus,
        donorAmount,
        address,
        kecamatan,
        cityRegency,
        province,
        linkToAddress,
      ];
}

final List<User> mockUser = [
  const User(
    id: 1,
    username: "w_alfandi",
    name: "Wahyu Alfandi",
    phoneNumber: "081994832213",
    address: "Karang Tapen",
    bloodType: "O+",
    cityRegency: "Mataram",
    donorAmount: "5",
    email: "w.alfa433@gmail.com",
    kecamatan: "Cakranegara",
    province: "Nusa Tenggara Barat",
    userStatus: Status.available,
    picturePath:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
    linkToAddress: "https://maps.google.com/?ll=-8.6033679,116.1544142",
  ),
  const User(
    id: 2,
    username: "mediA",
    name: "Mediana Arofah",
    phoneNumber: "08123456789",
    address: "Pagutan",
    bloodType: "A+",
    cityRegency: "Mataram",
    donorAmount: "10",
    email: "medianaAgistany@gmail.com",
    kecamatan: "Sandubaya",
    province: "Nusa Tenggara Barat",
    userStatus: Status.available,
    picturePath:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
    linkToAddress: "https://maps.google.com/?ll=-8.6062512,116.1113527,17z",
  ),
  const User(
    id: 3,
    username: "alie20",
    name: "Alidin",
    phoneNumber: "08123456789",
    address: "Rasabou",
    bloodType: "A+",
    cityRegency: "Bima",
    donorAmount: "50",
    email: "alidyne2020@gmail.com",
    kecamatan: "Rasabou",
    province: "Nusa Tenggara Barat",
    userStatus: Status.available,
    picturePath:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
    linkToAddress: "https://maps.google.com/?ll=-8.6062512,116.1113527,17z",
  ),
  const User(
    id: 4,
    username: "fauzyah",
    name: "Fauziah Aulia Rachim",
    phoneNumber: "08123456789",
    address: "Kecamatan",
    bloodType: "A+",
    cityRegency: "Lombok Barat",
    donorAmount: "25",
    email: "farachim@gmail.com",
    kecamatan: "Gunung Sari",
    province: "Nusa Tenggara Barat",
    userStatus: Status.available,
    picturePath:
        "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
    linkToAddress: "https://maps.google.com/?ll=-8.6062512,116.1113527,17z",
  )
];
