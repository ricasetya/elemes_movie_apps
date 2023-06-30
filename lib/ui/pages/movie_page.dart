part of 'pages.dart';

class MoviePAge extends StatelessWidget {
  const MoviePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //HEADER
        Container(
          decoration: BoxDecoration(
            color: accentColor1,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          padding:
              const EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 30),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF5F558B), width: 1)),
                child: Stack(
                  children: [
                    SpinKitFadingCircle(color: accentColor2, size: 50),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/user_pic.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width -
                        2 * defaultMargin -
                        78,
                    child: Text(
                      "Rica Setya W",
                      style: whiteTextFont.copyWith(fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: "id_ID", decimalDigits: 0, symbol: "IDR ")
                        .format(500000),
                    style: yellowNumberFont.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ),
        // NOW PLAYING
        Container(
          margin:
              const EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 12),
          child: Text(
            "Now Playing",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              //margin: const EdgeInsets.all(5),
              margin: EdgeInsets.only(
                  left: (index == 0) ? defaultMargin : 0, right: 15),
              child: MovieCard(key),
            ),
          ),
        ),
        // BROWSE MOVIE
        Container(
          margin:
              const EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 12),
          child: Text(
            "Browse Movie",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [BrowseButton()],
          ),
        ),
        Container(
          margin:
              const EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 12),
          child: Text(
            "Comming Soon",
            style: blackTextFont.copyWith(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              //margin: const EdgeInsets.all(5),
              margin: EdgeInsets.only(
                  left: (index == 0) ? defaultMargin : 0, right: 15),
              child: MovieCard(key),
            ),
          ),
        ),
      ],
    );
  }
}
