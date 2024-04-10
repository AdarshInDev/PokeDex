// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_dex/components/upper_part.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.notifications_on_rounded),
          )
        ],
        title: Center(
          child: Text(
            "_Name_Profile_",
            style: GoogleFonts.getFont('Lato', fontWeight: FontWeight.w700),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 43, 4, 50),
        child: Container(
          child: ListView(
            children: const [
              DrawerHeader(
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Adarsh Pradhan',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text('Flutter Developer',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                title: Text('About Me',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(
                  Icons.folder,
                  color: Colors.blue,
                ),
                title: Text('Folder',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(
                  Icons.download,
                  color: Colors.blue,
                ),
                title: Text('Downloads',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(
                  Icons.upload,
                  color: Colors.blue,
                ),
                title: Text('Uploads',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(
                  Icons.work,
                  color: Colors.blue,
                ),
                title: Text('Skills',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text('Settings',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: Text('Logout',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: Colors.green[400],
            child: const Upper(),
          ),
          Divider(
            thickness: 15,
            color: Colors.green[600],
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(25, 30),
                    topRight: Radius.elliptical(25, 30))),
            height: MediaQuery.of(context).size.height / 1.8055,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(itemBuilder: (build, index) {
                  return ;
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
