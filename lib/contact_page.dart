import 'package:contact_app/contacts.dart';
import 'package:contact_app/custume_icons.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/contact_view.dart';
import 'package:contact_app/contact_listview.dart';

class ContactPage extends StatefulWidget {
  final Contacts contacts;
  const ContactPage({Key? key, required this.contacts}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final Contacts c = widget.contacts;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text('Contacts',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 20,
            )),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(c.imagePath),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  c.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Gaziantep City Turkey',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Mobile',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            subtitle: const Text('+90 367 772 9342'),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: const [
                IconsCard(ic: Icons.video_call_rounded),
                SizedBox(
                  width: 9,
                ),
                IconsCard(ic: Icons.message),
                SizedBox(
                  width: 9,
                ),
                IconsCard(ic: Icons.call),
              ],
            ),
          ),
          const ListTile(
            title: Text('Email',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            subtitle: Text('Danielacortez@yahoo.com'),
            trailing: IconsCard(ic: Icons.mail),
          ),
          const ListTile(
              title: Text('Group',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
              subtitle: Text('Campus Friends'),
              trailing: IconsCard(ic: Icons.group)),
          Card(
            margin: const EdgeInsets.all(0),
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 35,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Text(
                'Account Linked',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Telegram',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/telegram.jpg'),
              radius: 15,
            ),
          ),
          const ListTile(
            title: Text('WhatsApp',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/wa.jpg'),
              radius: 15,
            ),
          ),
          Card(
            margin: const EdgeInsets.all(0),
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 35,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Text(
                'More Options',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const ListTile(
              title: Text('Share',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
              trailing: IconsCard(ic: Icons.share)),
          const ListTile(
              title: Text('QR Code',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
              trailing: IconsCard(ic: Icons.qr_code)),
        ],
      ),
    );
  }
}
