import 'package:flutter/material.dart';
import 'package:news_app/models/Article_models.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});
  final ArticleModels articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                )
              : Image.network(
                  "https://www.google.com/imgres?q=image%20white%20background&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fthumbnails%2F011%2F020%2F176%2Fsmall%2Fabstract-white-and-light-gray-wave-modern-soft-luxury-texture-with-smooth-and-clean-background-free-vector.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fwhite-background&docid=MBH-NYxwhDLHZM&tbnid=gZaQgvXTq51OWM&vet=12ahUKEwifts7VoeiSAxXqV6QEHYTWJggQnPAOegQIGRAB..i&w=622&h=350&hcb=2&ved=2ahUKEwifts7VoeiSAxXqV6QEHYTWJggQnPAOegQIGRAB",
                ),
        ),
        SizedBox(height: 10),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Text(
          articleModel.subtitle ?? " ",
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
