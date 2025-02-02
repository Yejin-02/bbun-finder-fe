import 'package:flutter/material.dart';

class BbunCard extends StatelessWidget {
  final String name;
  final String studentId;
  final String email;
  final String issueDate;
  final ImageProvider? profileImage;

  const BbunCard({
    super.key,
    required this.name,
    required this.studentId,
    required this.email,
    required this.issueDate,
    this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321,
      height: 175,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 9,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "funline sk8ter ID Card",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF886CD6),
                  fontWeight: FontWeight.w400,
                  height: 1.1,
                ),
              ),
              Spacer(),
              Text(
                ">>>",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF886CD6),
                  fontWeight: FontWeight.w300,
                  height: 1.1,
                ),
              ),
              SizedBox(
                width: 9,
              ),
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFDDD1FF),
                    Color(0xFFA48EE4),
                  ],
                  radius: 0.92,
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 15.5,
                vertical: 8.5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 90,
                    height: 113.39,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: profileImage != null
                          ? DecorationImage(
                              image: profileImage!, fit: BoxFit.cover)
                          : null,
                    ),
                    child: profileImage == null
                        ? const Icon(Icons.person, size: 70, color: Colors.grey)
                        : null,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NAME",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF886CD6),
                          fontWeight: FontWeight.w400,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "STUDENT ID",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF886CD6),
                          fontWeight: FontWeight.w400,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        studentId,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "E-MAIL",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF886CD6),
                          fontWeight: FontWeight.w400,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              Text(
                "issue date $issueDate",
                style: TextStyle(
                  fontSize: 9,
                  color: Color(0xFF886CD6),
                  fontWeight: FontWeight.w400,
                  height: 1.1,
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
