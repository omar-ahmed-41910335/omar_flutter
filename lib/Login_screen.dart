
import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  var emailcon = TextEditingController();
  var paascon = TextEditingController();

  Login_Screen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40,),
            TextField(
             
            controller: emailcon,
            keyboardType: TextInputType.emailAddress ,
              onSubmitted: (value){
              print(value);
              },
              decoration: InputDecoration(
                  hoverColor:Colors.amber,
                prefixIcon: Icon(Icons.email),
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller : paascon,
              keyboardType: TextInputType.visiblePassword ,
              obscureText:true,
              onSubmitted: (value){
                print(value);
              },
              decoration: InputDecoration(
                hoverColor:Colors.amber,
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25,),
            MaterialButton(onPressed: () {
                print(emailcon.text);
                print(paascon.text);
                },
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                    'Login',
                  style: TextStyle(fontSize: 30,color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Don\'t Have An account ?',
                  style: TextStyle(fontSize: 18),

                ),
                TextButton(onPressed: (){}, child:Text('Register Now',style: TextStyle(fontSize: 15),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
