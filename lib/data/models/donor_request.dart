part of 'models.dart';

class DonorRequest extends Equatable {
  final int id;
  final User? user;
  final String? resipienName;
  final String? resipienBloodType;
  final String? description;
  final String? date;
  final int? bloodNeeds;
  final int? bloodFullfilled;
  final String? location;
  const DonorRequest({
    required this.id,
    required this.user,
    this.resipienName,
    this.resipienBloodType,
    this.description,
    this.date,
    this.location,
    this.bloodNeeds = 0,
    this.bloodFullfilled = 0,
  });

  factory DonorRequest.fromJson(Map<String, dynamic> data) => DonorRequest(
        id: data['id'] as int,
        user: User.fromJson(data['user'] as Map<String, dynamic>),
        resipienName: data['resipienName'] as String,
        description: data['description'] as String,
        date: data['date'] as String,
        location: data['location'] as String,
        bloodNeeds: data['bloodNeeds'] as int,
        bloodFullfilled: data['bloodFullfilled'] as int,
        resipienBloodType: data['resipienBloodType'] as String,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        user,
        resipienName,
        resipienBloodType,
        description,
        date,
        location,
        bloodNeeds,
        bloodFullfilled,
      ];
}

final List<DonorRequest> mockDonorRequest = [
  DonorRequest(
    id: 1,
    user: mockUser[0],
    bloodFullfilled: 2,
    bloodNeeds: 5,
    date: "2021-07-21",
    description: "Untuk pengobatan keluarga saya",
    resipienName: "George",
    location: "RSUD Kota Mataram",
    resipienBloodType: "O+",
  ),
  DonorRequest(
    id: 2,
    user: mockUser[1],
    bloodFullfilled: 1,
    bloodNeeds: 9,
    date: "2021-07-22",
    description: "Untuk operasi",
    resipienName: "Fany",
    location: "RSUD Kota Mataram",
    resipienBloodType: "A-",
  ),
  DonorRequest(
    id: 3,
    user: mockUser[2],
    bloodFullfilled: 2,
    bloodNeeds: 7,
    date: "2021-07-21",
    description: "Untuk operasi",
    resipienName: "Walley",
    location: "RSUD Kota Mataram",
    resipienBloodType: "AB+",
  ),
  DonorRequest(
    id: 4,
    user: mockUser[3],
    bloodFullfilled: 2,
    bloodNeeds: 7,
    date: "2021-07-19",
    description: "Untuk operasi",
    resipienName: "Flowery",
    location: "RSUD Kota Mataram",
    resipienBloodType: "B+",
  ),
];
