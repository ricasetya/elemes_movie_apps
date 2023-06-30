// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double voteAverage;
  final double starSize;
  final double fontsize;
  const RatingStars({
    Key? key,
    this.voteAverage = 0,
    this.starSize = 20,
    this.fontsize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int n = (voteAverage / 2).round();
    List<Widget> widgets = List.generate(
        5,
        ((index) => Icon(
              index < n ? MdiIcons.star : MdiIcons.starOffOutline,
              color: accentColor2,
              size: starSize,
            )));

    widgets.add(Text(
      "$voteAverage/10",
      style: whiteNumberFont.copyWith(
          fontWeight: FontWeight.w300, fontSize: fontsize),
    ));
    return Row(
      children: widgets,
    );
  }
}
