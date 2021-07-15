part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 36,
                    height: 36,
                    child: CircleAvatar(
                      backgroundColor: grayColor,
                      backgroundImage: const NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/220px-Pierre-Person.jpg'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(Icons.notifications_outlined),
                  )
                ],
              ),
              const SizedBox(height: 40),
              Text(
                'One Blood',
                style: text24.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'Permintaan Darah',
                style: text14.copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              //! Search
              buildSearch(),
              const SizedBox(height: 20),
              Container(
                color: bgColor,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: CupertinoSearchTextField(
            placeholder: 'Pencarian',
            backgroundColor: bgColor,
            prefixInsets: const EdgeInsets.only(left: 10),
            onChanged: (value) {},
            onSubmitted: (value) {},
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 36,
            width: 41,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgColor,
            ),
            child: const Icon(Icons.sort),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
