part of 'widgets.dart';

class DonorListItem extends StatelessWidget {
  final DonorRequest request;
  const DonorListItem({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 83,
            width: 57,
            decoration: BoxDecoration(
              color: pinkColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            //* blood type
            child: Center(
              child: Text(
                request.resipienBloodType ?? "null",
                style: whiteTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(request.user!.picturePath!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                request.user!.name ?? "Null",
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                request.date != null
                    ? DateFormat("dd MMMM y")
                        .format(DateTime.parse(request.date!))
                    : "Null",
                style: blackTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 16,
                    child: Image.asset('assets/icon_location.png'),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    request.location ?? "Null",
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 78,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: pinkColor,
                  ),
                  child: Center(
                    child: Text(
                      'Lihat Detail',
                      style: whiteTextStyle.copyWith(fontSize: 10),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
