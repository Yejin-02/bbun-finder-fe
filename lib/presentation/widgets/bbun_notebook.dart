import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:bbun/presentation/widgets/bbun_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class BbunNotebook extends StatefulWidget {
  const BbunNotebook({super.key});

  @override
  State<BbunNotebook> createState() => _BbunNotebookState();
}

class _BbunNotebookState extends State<BbunNotebook> {
  final card = BbunCard(
    name: "양예진",
    studentId: "20215121",
    email: "yangyj@gm.gist.ac.kr",
    issueDate: "2025.01.28",
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      constraints: BoxConstraints(maxWidth: 393),
      height: 547,
      child: Stack(
        children: [
          // 노트 속지
          Image.asset(
            "images/paper.png",
            width: screenWidth,
          ),
          // 병아리
          Positioned(
            top: 306,
            left: 287.73,
            child: SvgPicture.asset(
              "assets/icons/chick.svg",
              width: 61.9,
            ),
          ),
          // 뻔 카드
          // TODO: 지금 빈 상자라서 진짜 뻔 카드로 교체 필요
          Positioned(
              top: 60,
              left: 85.9,
              child: Transform.rotate(
                angle: 0.11397,
                child: Container(
                  width: 321,
                  height: 175,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                ),
              )),
          // 별 클립
          Positioned(
            top: 37,
            left: 281,
            child: SvgPicture.asset(
              "assets/icons/star_clip.svg",
              width: 78.45,
            ),
          ),
          // 학생 상세 정보
          Positioned(
            top: 360,
            left: 30,
            child: Transform.rotate(
              angle: -0.0523,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '전공',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '전기전자컴퓨터공학부',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset("assets/icons/devider_1.svg"),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'MBTI',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'ISTJ',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset("assets/icons/devider_2.svg"),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '인스타그램',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '@insta',
                        style: TextStyle(
                          fontFamily: 'CornCorn',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset("assets/icons/devider_3.svg"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
