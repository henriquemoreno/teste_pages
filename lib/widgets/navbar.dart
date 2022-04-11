import 'package:flutter/material.dart';
import 'package:teste_pages/pages/form_feedback.dart';
import 'package:teste_pages/pages/form_page.dart';
import 'package:teste_pages/pages/form_personal_information.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.purple.withOpacity(0.2),
              Colors.red.withOpacity(0.2),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: ListView(
          // Remove padding
          padding: const EdgeInsets.only(top: 25),
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Oflutter.com'),
              accountEmail: const Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    //'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                    'https://pbs.twimg.com/media/Dm1neA0X4AEMmnR?format=jpg&name=360x360',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('Address'),
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FormPage()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Personal Information'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalInformation()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text('Feedback'),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FeedbackPage()))
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Request'),
              onTap: () => {},
              trailing: ClipOval(
                child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: const Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text('Policies'),
              onTap: () => {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Exit'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
