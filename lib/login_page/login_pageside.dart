import 'package:first_app/login_page/components/my_button.dart';
import 'package:first_app/login_page/components/my_textfield.dart';
import 'package:first_app/login_page/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),

              //logo
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 150,
                ),
              ),

              const SizedBox(height: 25),

              //welcome back
              Text(
                'Hoşgeldin!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade200,
                ),
              ),
              const SizedBox(height: 15),
              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Kullanıcı adı',
                obscureText: false,
              ),
              const SizedBox(height: 25),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Şifre',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //Forgot password ?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Şifremi Unuttum',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button

              MyButton(),

              const SizedBox(height: 25),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Diğer Platformlarla Giriş Yap',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // google apple sign in
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button

                  SquareTile(imagePath: 'assets/images/google.png'),

                  SizedBox(height: 10),

                  //apple button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: SquareTile(imagePath: 'assets/images/apple.png'),
                  ),
                ],
              ),
              // not a member ? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Üye değil misin?'),
                  const SizedBox(
                    height: 40,
                    width: 10,
                  ),
                  Text(
                    'Kayıt ol',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
