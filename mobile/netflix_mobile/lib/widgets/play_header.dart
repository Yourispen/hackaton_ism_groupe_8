import 'package:flutter/material.dart';
import 'package:netflix_mobile/models/models.dart';
//import 'package:netflix_mobile/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({
    Key? key,
    required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 210.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _PlayButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    foregroundColor: Colors.black, backgroundColor: Colors.white,
    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const SizedBox(height: 30),TextButton.icon(
      style: flatButtonStyle,
      onPressed: () {
                      Navigator.pushNamed(context, "/play");
                    },
      icon: const Icon(Icons.play_arrow, size: 50.0),
      label: const Text(
        'Lecture',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),const SizedBox(height: 30),TextButton.icon(
      style: flatButtonStyle,
      onPressed: () {
                      Navigator.pushNamed(context, "/play");
                    },
      icon: const Icon(Icons.play_arrow, size: 50.0),
      label: const Text(
        'Télécharger',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    )]);
  }
}
