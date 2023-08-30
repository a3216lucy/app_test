import 'package:app_test/src/constants/regex.dart';
import 'package:app_test/src/constants/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 登入頁
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  // 監聽 account 輸入框
  final accountController = TextEditingController();
  // 監聽 password 輸入框
  final passwordController = TextEditingController();

  // 路由守衛邏輯
  bool authGuardLogic() {
    // 若表單驗證成功，則回傳 true 並顯示 SnackBar
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Column(
          children: [
            Text('帳號：${accountController.text}'),
            Text('密碼：${passwordController.text}'),
            const Text('登入成功'),
          ],
        )),
      );
      return true;
    }
    // 反之，則回傳 false
    return false;
  }

  @override
  void dispose() {
    accountController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('登入'),
        ),
        body: Center(
          child: SizedBox(
            width: 330,
            child: Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  width: 330,
                  child: const Text('請在下方輸入登入資訊：',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white70)),
                ),
                //帳號
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your account',
                    labelText: '帳號',
                  ),
                  controller: accountController,
                  //驗證器
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '請輸入帳號';
                    }
                    if (!RegexValidator(accountPattern).isValid(value)) {
                      return '請輸入正確的帳號格式';
                    }
                    return null;
                  },
                  onChanged: (text) {
                    print('First text field: $text');
                  },
                ),
                //密碼
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter your password',
                    labelText: '密碼',
                  ),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '請輸入密碼';
                    }
                    return null;
                  },
                ),
                //登入按鈕
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                          width: 1.0,
                          color: Colors.white54,
                        )),
                        onPressed: () {
                          // 添加路由守衛
                          final canNavigate = authGuardLogic();
                          if (canNavigate) {
                            GoRouter.of(context).go(ScreenPaths.test());
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Access denied!'),
                              ),
                            );
                          }
                        },
                        child: const Text('登入'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[500],
                        ),
                        onPressed: () {
                          GoRouter.of(context).push(ScreenPaths.register());
                        },
                        child: const Text('註冊',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
