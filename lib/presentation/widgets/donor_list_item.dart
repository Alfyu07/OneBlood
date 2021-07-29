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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 4,
              offset: const Offset(4, 4), // changes position of shadow
            ),
          ]),
      child: Row(
        children: [
          Container(
            height: 83,
            width: 57,
            decoration: BoxDecoration(
              color: lightRedColor,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: CachedNetworkImage(
              imageUrl: request.user!.picturePath ?? "",
              height: 40,
              width: 40,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: Colors.black12,
              ),
            ),
          ),
          const SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                request.resipienName ?? "Null",
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
                    color: mainColor,
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
