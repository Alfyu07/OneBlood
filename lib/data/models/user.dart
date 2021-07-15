part of 'models.dart';

enum UserCondition {
  donor,
  cantDonor,
}

class User extends Equatable {
  final int id;
  final String username;
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? picturePath;
  final String? bloodType;
  final UserCondition? userCondition;
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
    this.userCondition = UserCondition.donor,
    this.donorAmount,
    this.address,
    this.kecamatan,
    this.cityRegency,
    this.province,
    this.linkToAddress,
  });

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
        userCondition,
        donorAmount,
        address,
        kecamatan,
        cityRegency,
        province,
        linkToAddress,
      ];
}
