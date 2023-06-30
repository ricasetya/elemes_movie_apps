// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class MovieCard extends StatelessWidget {
  //final Movie movie;
  MovieCard(
    Key? key,
    //this.movie,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            //image: NetworkImage(imageBaseURL + "w780"),
            image: AssetImage("assets/images.jpg"),
            //  NetworkImage(
            //   // "https://www.freepik.com/free-psd/explore-concept-poster-template_9877972.htm#query=movie%20cover&position=1&from_view=keyword&track=ais"
            //   "https://www.freepik.com/free-psd/jazz-concert-print-template_17253621.htm#query=movie%20poster&position=0&from_view=keyword&track=ais",
            // ),
            fit: BoxFit.cover),
      ),
      child: Container(
        height: 140,
        width: 210,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.61),
                Colors.black.withOpacity(0)
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Horor",
                style: whiteTextFont,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            const RatingStars(
              voteAverage: 4,
            )
          ],
        ),
      ),
    );
  }
}
