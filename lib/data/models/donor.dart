part of 'models.dart';

enum DonorStatus { complete, onProcess }

class Donor {
  final int id;
  final DonorRequest? request;
  final User? user;
  final DonorStatus status;
  const Donor({
    required this.id,
    this.request,
    this.user,
    this.status = DonorStatus.onProcess,
  });
}

final List<Donor> mockDonor = [
  Donor(
    id: 1,
    request: mockDonorRequest[0],
    user: mockUser[0],
  ),
  Donor(
      id: 2,
      request: mockDonorRequest[1],
      user: mockUser[0],
      status: DonorStatus.complete),
  Donor(
      id: 3,
      request: mockDonorRequest[2],
      user: mockUser[1],
      status: DonorStatus.complete),
  Donor(
      id: 4,
      request: mockDonorRequest[3],
      user: mockUser[2],
      status: DonorStatus.complete),
];
