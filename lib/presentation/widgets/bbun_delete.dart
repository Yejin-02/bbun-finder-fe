import 'package:flutter/material.dart';

class BbunDelete extends StatelessWidget {
  const BbunDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 68,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '회원 탈퇴\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '개인 정보 동의를 철회하려면 회원 탈퇴가 필요합니다.이 행위는 되돌릴 수 없습니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Container(
            height: 25,
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 18,
                  height: 18,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // assets/svg/delete.svg를 width 18 height 18로 보여주고 싶은 곳
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '탈퇴하기',
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
        ],
      ),
    );
  }
}
