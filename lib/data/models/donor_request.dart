part of 'models.dart';

class DonorRequest extends Equatable {
  final int id;
  final int idUser;
  final String? name;
  final String? description;
  final String? date;
  final int? bloodNeeds;
  final int? bloodFullfilled;
  final String? location;
  final String? longitude;
  final String? latitude;
  const DonorRequest({
    required this.id,
    required this.idUser,
    this.name = "",
    this.description = "",
    this.date = "",
    this.location = "",
    this.bloodNeeds = 0,
    this.bloodFullfilled = 0,
    this.longitude = "",
    this.latitude = "",
  });

  factory DonorRequest.fromJson(Map<String, dynamic> data) => DonorRequest(
        id: data['id'] as int,
        idUser: data['idUser'] as int,
        name: data['name'] as String,
        description: data['description'] as String,
        date: data['date'] as String,
        location: data['location'] as String,
        bloodNeeds: data['bloodNeeds'] as int,
        bloodFullfilled: data['bloodFullfilled'] as int,
        longitude: data['longitude'] as String,
        latitude: data['latitude'] as String,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        idUser,
        name,
        description,
        date,
        location,
        bloodNeeds,
        bloodFullfilled,
        longitude,
        latitude
      ];
}

final List<DonorRequest> mockDonorRequest = [
  const DonorRequest(
    id: 1,
    idUser: 1,
    name: "Mediana Arofah",
  ),
];
