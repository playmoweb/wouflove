import 'package:flutter/material.dart';
import 'package:wouflove/src/theme.dart';

import '../../constants.dart';
import '../../models/animal.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: STORIES_HEIGHT,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: Animal.values.map((animal) {
          bool isFirst = animal == Animal.values.first;

          return Row(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: XLARGE_CONTAINER_SIZE,
                        height: XLARGE_CONTAINER_SIZE,
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        child: Image.asset(
                          animal.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      isFirst
                          ? Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: XSMALL_CONTAINER_SIZE,
                                  width: XSMALL_CONTAINER_SIZE,
                                  decoration: BoxDecoration(
                                    color: WoufTheme.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: WoufTheme.black,
                                    size: XSMALL_CONTAINER_SIZE,
                                  ),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                  SizedBox(height: XSMALL_PADDING),
                  Text(
                    animal.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
              SizedBox(
                width: MEDIUM_PADDING,
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}
