import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PersonItem extends StatefulWidget {
  final String personalitem;
  const PersonItem({super.key, required this.personalitem});

  @override
  State<PersonItem> createState() => _PersonItemState();
}

class _PersonItemState extends State<PersonItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.personalitem))
        ),
      ),
    );
  }
}