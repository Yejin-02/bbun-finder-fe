import 'package:auto_route/auto_route.dart';
import 'package:bbun/presentation/widgets/bbun_card.dart';
import 'package:bbun/presentation/widgets/bbun_checkbox.dart';
import 'package:bbun/presentation/widgets/bbun_delete.dart';
import 'package:bbun/presentation/widgets/bbun_displayfield.dart';
import 'package:bbun/presentation/widgets/bbun_inputfield.dart';
import 'package:bbun/presentation/widgets/bbun_pressable.dart';
import 'package:flutter/material.dart';
import 'package:bbun/routes/app_router.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  bool isChecked = false;

  final TextEditingController departmentController = TextEditingController();
  final TextEditingController mbtiController = TextEditingController();
  final TextEditingController igIdController = TextEditingController();

  // dummy
  final String dummyName = "홍길동";
  final String dummyStudentId = "20231234";
  final String dummyEmail = "hong@example.com";
  final String dummyIssueDate = "2025-02-15";
  final bool dummyIsBbunReg = true;
  ImageProvider? dummyProfileImage;
  String? dummyDepart;
  String? dummyMBTI;
  String? dummyIGID;

  @override
  void dispose() {
    // 위젯이 파괴될 때, 텍스트 컨트롤러를 메모리에서 해제
    departmentController.dispose();
    mbtiController.dispose();
    igIdController.dispose();
    super.dispose();
  }

  // TODO: 변경 불가 인적 사항 IdP 통해 불러와서 보여주는 로직 추가
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(children: [
            // 상단 그라데이션
            Container(
              height: 257,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.00, 1.00),
                  end: Alignment(0, -1),
                  colors: [Color(0xFFFBFBFB), Color(0xFFFDFD96)],
                ),
              ),
            ),

            // 하단 그라데이션
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 257,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.00, 1.00),
                          end: Alignment(0, -1),
                          colors: [Color(0xFFFDFD96), Color(0xFFFBFBFB)])),
                )),

            Positioned(
              child: Column(
                children: [
                  SizedBox(
                    height: 152,
                    width: screenWidth,
                  ),

                  // 뒤로 가기
                  SizedBox(
                    width: 340,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 30,
                            onPressed: () {
                              //TODO: 뒤로가기 클릭 시 디테일 화면으로 연결
                              print("뒤로가기 클릭");
                            },
                          ),
                        ]),
                  ),

                  // 내 프로필
                  SizedBox(
                    width: 321,
                    child: Text(
                      '내 프로필',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontFamily: 'HSSanTokki',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                  // 개인 정보 동의 안내
                  SizedBox(
                    width: 321,
                    child: const Text(
                      "개인 정보 제공에 동의해야 프로필 설정을 완료하고 서비스를 이용할 수 있습니다.",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 뻔카드
                  BbunCard(
                    name: dummyName,
                    studentId: dummyStudentId,
                    email: dummyEmail,
                    issueDate: dummyIssueDate,
                    profileImage: dummyProfileImage,
                  ),
                  const SizedBox(height: 15),

                  SizedBox(
                    width: 321,
                    child: GestureDetector(
                      onTap: () {
                        // 사진 변경 클릭 시 생기는 바텀 시트
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 68,
                                      height: 5,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFE3E3E3),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    // 라이브러리에서 선택
                                    SizedBox(
                                      width: double.infinity,
                                      child: GestureDetector(
                                        onTap: () {
                                          // TODO: 라이브러리에서 선택 로직 구현
                                          print("라이브러리에서 선택");
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/gallery.svg',
                                              width: 18,
                                            ),
                                            const SizedBox(width: 15),
                                            Text(
                                              '라이브러리에서 선택',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w500,
                                                height: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),

                                    // 현재 사진 삭제
                                    SizedBox(
                                      width: double.infinity,
                                      child: GestureDetector(
                                        onTap: () {
                                          // TODO: 현재 사진 삭제 로직 구현
                                          print("현재 사진 삭제");
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/delete.svg',
                                              width: 18,
                                            ),
                                            const SizedBox(width: 15),
                                            Text(
                                              '현재 사진 삭제',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFF10000),
                                                fontSize: 18,
                                                fontFamily: 'Pretendard',
                                                fontWeight: FontWeight.w500,
                                                height: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(
                        '사진 변경',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 학번 (변경 불가)
                  BbunDisplayField(
                      labelText: '학번', displayText: dummyStudentId),
                  const SizedBox(height: 10),

                  // 이름 (변경 불가)
                  BbunDisplayField(labelText: '이름', displayText: dummyName),
                  const SizedBox(height: 10),

                  // 이메일 (변경 불가)
                  BbunDisplayField(
                    labelText: '이메일',
                    displayText: dummyStudentId,
                  ),
                  const SizedBox(height: 10),

                  // 학과 (변경 가능)
                  BbunInputfield(
                    labelText: '학과 (선택)',
                    hintText: (dummyDepart != null && dummyDepart!.isNotEmpty)
                        ? dummyDepart!
                        : '학과를 입력하세요',
                    controller: departmentController,
                  ),
                  const SizedBox(height: 10),

                  // MBTI (변경 가능)
                  BbunInputfield(
                    labelText: 'MBTI (선택)',
                    hintText: (dummyMBTI != null && dummyMBTI!.isNotEmpty)
                        ? dummyMBTI!
                        : 'MBTI를 입력하세요',
                    controller: mbtiController,
                  ),
                  const SizedBox(height: 10),

                  // 인스타그램 아이디 (변경 가능)
                  BbunInputfield(
                    labelText: '인스타그램 아이디 (선택)',
                    hintText: (dummyIGID != null && dummyIGID!.isNotEmpty)
                        ? dummyIGID!
                        : '인스타그램 아이디를 입력하세요',
                    controller: igIdController,
                  ),
                  const SizedBox(height: 20),

                  dummyIsBbunReg
                      ?
                      // 탈퇴 박스
                      BbunDelete()
                      :
                      // 개인정보 동의 체크박스
                      BbunCheckbox(
                          isChecked: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value; // 체크 상태 갱신
                            });
                          },
                        ),
                  const SizedBox(height: 20),

                  // 제출 버튼
                  SizedBox(
                    width: 317,
                    child: BbunPressable(
                      onPressed: (!isChecked & !dummyIsBbunReg)
                          ? null
                          : () {
                              setState(() {
                                dummyDepart = departmentController.text;
                                dummyMBTI = mbtiController.text;
                                dummyIGID = igIdController.text;
                              });
                            },
                      decoration: BoxDecoration(
                        color: !isChecked & !dummyIsBbunReg
                            ? Color(0xFFE2E2E2)
                            : Color(0xFFFFE24A),
                        borderRadius: BorderRadius.circular(38),
                        border: !isChecked & !dummyIsBbunReg
                            ? Border.all(
                                color: Colors.transparent, // 기본 상태에서는 테두리 없음
                              )
                            : Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            dummyIsBbunReg ? "수정" : "제출",
                            style: TextStyle(
                                color: !isChecked & !dummyIsBbunReg
                                    ? Color(0xFFB6B6B6)
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
