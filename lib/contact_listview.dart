import 'package:contact_app/contacts.dart';
import 'package:flutter/material.dart';

class ContactListView extends StatelessWidget {
  final Contacts contacts;
  final Function ontap;

  const ContactListView({Key? key, required this.contacts, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(contacts.imagePath),
            ),
            title: Text(contacts.name),
            subtitle: Text(contacts.contact),
            trailing: Icon(Icons.more_horiz_sharp),
          ),
          Divider(
            height: 1,
            endIndent: 15,
            indent: 15,
          )
        ],
      ),
    );
  }
}
