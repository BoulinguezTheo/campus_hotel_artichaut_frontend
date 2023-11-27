import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scaled_size/scaled_size.dart';
import '../../../utils/constants.dart';

class ReviewCard extends StatelessWidget {
  final String userName;
  final double rating;
  final String description;

  const ReviewCard({
    super.key,
    required this.userName,
    required this.rating,
    required this.description,
  });

  Color? getStarColor(int starIndex, ThemeData theme) {
    if (starIndex < rating) {
      return theme.cupertinoOverrideTheme?.primaryColor ??
          theme
              .primaryColor;
    } else {
      return theme.scaffoldBackgroundColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 1.5.vh),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.5.vh),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                size: 6.vh,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 1.vh),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 0.5.vh),
                          child: SvgPicture.asset(
                            ConstantsApp.LOGO_ARTICHAUT_PATH,
                            colorFilter: ColorFilter.mode(
                              getStarColor(index, Theme.of(context))!,
                              BlendMode.srcIn
                            ),
                            height: 2.vh,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          subtitle: Container(
            margin: EdgeInsets.only(top: 1.vh), // Marge supérieure de 8 points
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ),
      ),
    );
  }
}
