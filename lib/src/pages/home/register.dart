import 'package:app_test/src/constants/regex.dart';
import 'package:app_test/src/models/register_form.dart';
import 'package:flutter/material.dart';

/// 註冊頁
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  RegisterFormModel formModel = RegisterFormModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('註冊')),
      body: Center(
          child: SizedBox(
              width: 330,
              child: Form(
                  key: _registerFormKey,
                  child: Column(
                    children: <Widget>[
                      // username
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.people),
                          hintText: 'Enter your username',
                          labelText: '使用者姓名',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '請輸入使用者名稱';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          formModel.username = value!;
                        },
                      ),
                      // email
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Enter your email',
                          labelText: '信箱',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '請輸入信箱';
                          }
                          if (!RegexValidator(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .isValid(value)) {
                            return '請輸入正確的信箱格式';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          formModel.email = value!;
                        },
                      ),
                      // password
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: 'Enter your password',
                          labelText: '密碼',
                        ),
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '請輸入密碼';
                          }
                          if (value.length < 6) {
                            return '密碼至少需要6個字符';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          formModel.password = value!;
                        },
                      ),
                      // confirmPassword
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password_outlined),
                          hintText: 'Enter your confirmPassword',
                          labelText: '密碼確認',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '請輸入密碼確認';
                          }
                          if (value.length < 6) {
                            return '密碼至少需要6個字符';
                          }
                          if (value != _passwordController.text) {
                            return '密碼和確認密碼不匹配';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          formModel.confirmPassword = value!;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                          width: 1.0,
                          color: Colors.white54,
                        )),
                        onPressed: () {
                          if (_registerFormKey.currentState!.validate()) {
                            _registerFormKey.currentState!.save();
                            // 如果 formModel 也驗證通過，執行註冊操作
                            if (formModel.isValid()) {
                              _showRegistrationDetails();
                            }
                          } else {
                            print('表單驗證失敗');
                          }
                        },
                        child: const Text('註冊'),
                      ),
                    ],
                  )))),
    );
  }

  void _showRegistrationDetails() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('註冊成功'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('使用者姓名：${formModel.username}'),
              Text('信箱：${formModel.email}'),
              Text('信箱：${formModel.password}'),
              Text('信箱：${formModel.confirmPassword}'),
              const Text('註冊成功'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('關閉'),
            ),
          ],
        );
      },
    );
  }
}
