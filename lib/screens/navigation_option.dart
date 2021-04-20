import 'package:flutter/material.dart';
import '../constants.dart';

class NavigationOption extends StatelessWidget {
  final String title;
  final bool selected;
  final Function() onSelected;

  NavigationOption(
      {@required this.title,
      @required this.selected,
      @required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: selected ? kPrimaryColor : Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          selected
              ? Column(
                  children: <Widget>[
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
