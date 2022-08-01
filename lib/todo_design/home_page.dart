import 'package:flutter/material.dart';
import 'package:practice/todo_design/tasks_book.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.amber,
            height: MediaQuery.of(context).size.height * 0.65,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                firstWidget(),
                customTextFormField(text: 'E-mail'),
                customTextFormField(text: 'Password'),
                thirdWidget(),
                fourthWidget(),
                fifthWidget(),
                sixedWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class firstWidget extends StatelessWidget {
  const firstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        'Login',
        style: kTextStyleOne,
      ),
    );
  }
}

class customTextFormField extends StatelessWidget {
  String text;
  customTextFormField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          ),
        ),
      ),
    );
  }
}

class thirdWidget extends StatelessWidget {
  const thirdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TasksBook(),
          ),
        );
      },
      child: Text(
        'Login',
        style: TextStyle(color: Colors.black, fontSize: 18.0),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 15.0,
        ),
        primary: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
      ),
    );
  }
}

class fourthWidget extends StatelessWidget {
  const fourthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          'Sign up',
          style: TextStyle(
            color: appColor,
            decoration: TextDecoration.underline,
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}

class fifthWidget extends StatelessWidget {
  const fifthWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.37,
          child: Divider(
            thickness: 1.3,
            endIndent: 10.0,
          ),
        ),
        Text(
          'SNS',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.37,
          child: Divider(
            thickness: 1.3,
            indent: 10.0,
          ),
        ),
      ],
    );
  }
}

class sixedWidget extends StatelessWidget {
  const sixedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 35.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.whatsapp,
            color: Colors.green,
            size: 35.0,
          ),
        ),
      ],
    );
  }
}
