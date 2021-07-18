import 'package:flutter/material.dart';

class TypeOfService extends StatelessWidget {
  final String serviceInitial;
  final String nameOfService;
  final Color color;
  final serviceInitialfontweight;
  final serviceInitialfontsize;
  TypeOfService({
    Key? key,
    this.serviceInitial = 'S',
    this.nameOfService = 'ChurchService',
    this.color = Colors.black,
    this.serviceInitialfontweight = FontWeight.w500,
    this.serviceInitialfontsize = 21.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Text(
              serviceInitial,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: serviceInitialfontweight,
                  fontSize: serviceInitialfontsize),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          nameOfService,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
