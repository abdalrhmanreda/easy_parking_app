import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Profile',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('images/h.jpeg'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20.0,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Habiba Mostafa',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'habibamostafa@gmail.com',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        'Edit Profile',
                      ),
                    ],
                  ),
                  color: Colors.orange,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Setting',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.payment_outlined),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Payment',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.notification_important),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Notification',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.security_outlined),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Security',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.help_center_outlined),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Help',
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Logout',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
