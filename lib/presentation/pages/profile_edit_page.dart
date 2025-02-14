import 'package:auto_route/auto_route.dart';
import 'package:bbun/presentation/widgets/bbun_checkbox.dart';
import 'package:bbun/presentation/widgets/bbun_displayfield.dart';
import 'package:bbun/presentation/widgets/bbun_inputfield.dart';
import 'package:bbun/presentation/widgets/bbun_pressable.dart';
import 'package:flutter/material.dart';
import 'package:bbun/routes/app_router.dart';

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
  final TextEditingController instagramController = TextEditingController();

  @override
  void dispose() {
    // 위젯이 파괴될 때, 텍스트 컨트롤러를 메모리에서 해제
    departmentController.dispose();
    mbtiController.dispose();
    instagramController.dispose();
    super.dispose();
  }

  // TODO: 변경 불가 인적 사항 IdP 통해 불러와서 보여주는 로직 추가
  @override
  Widget build(BuildContext context) {
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

            Column(
              children: [
                const SizedBox(height: 160),

                // 내 프로필
                Column(
                  children: [
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
                    SizedBox(
                      width: 321,
                      child: Text(
                        '내 프로필',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontFamily: 'HSSanTokki',
                          fontWeight: FontWeight.w400,
                          height: 1.14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

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

                // 학번 (변경 불가)
                BbunDisplayField(labelText: '학번', displayText: '20215120'),
                const SizedBox(height: 10),

                // 이름 (변경 불가)
                BbunDisplayField(labelText: '이름', displayText: '양예진'),
                const SizedBox(height: 10),

                // 이메일 (변경 불가)
                BbunDisplayField(
                  labelText: '이메일',
                  displayText: 'yangyj21@gm.gist.ac.kr',
                ),
                const SizedBox(height: 10),

                // 학과 (변경 가능)
                BbunInputfield(
                  labelText: '학과 (선택)',
                  hintText: '학과를 입력하세요',
                  controller: departmentController,
                ),
                const SizedBox(height: 10),

                // MBTI (변경 가능)
                BbunInputfield(
                  labelText: 'MBTI (선택)',
                  hintText: 'MBTI를 입력하세요',
                  controller: mbtiController,
                ),
                const SizedBox(height: 10),

                // 인스타그램 아이디 (변경 가능)
                BbunInputfield(
                  labelText: '인스타그램 아이디 (선택)',
                  hintText: '인스타그램 아이디를 입력하세요',
                  controller: instagramController,
                ),
                const SizedBox(height: 20),

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
                    onPressed: () {
                      // TODO: 제출 버튼 클릭 시 처리할 로직으로 수정
                      print("제출 버튼 클릭됨");
                    },
                    decoration: BoxDecoration(
                      color: isChecked ? Color(0xFFFFE24A) : Color(0xFFE2E2E2),
                      borderRadius: BorderRadius.circular(38),
                      border: isChecked
                          ? Border.all(
                              color: Colors.black,
                              width: 1.5,
                            )
                          : Border.all(
                              color: Colors.transparent, // 기본 상태에서는 테두리 없음
                            ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "제출",
                          style: TextStyle(
                              color:
                                  isChecked ? Colors.black : Color(0xFFB6B6B6),
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

                // 하단 그라데이션
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 257,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.00, 1.00),
                        end: Alignment(0, -1),
                        colors: [Color(0xFFFDFD96), Color(0xFFFBFBFB)],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
