import 'dart:ui';
import 'package:contact_app/contacts.dart';
import 'package:flutter/material.dart';
import 'package:contact_app/contact_page.dart';
import 'package:contact_app/contact_listview.dart';
import 'package:flutter/painting.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Contacts',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage('assets/15.jpg'),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 5,
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Search by name or number',
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Recents',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 1,
            endIndent: 15,
            indent: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(recentlist.length, (index) {
                return ContactListView(
                  contacts: recentlist[index],
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  contacts: recentlist[index],
                                )));
                  },
                );
              }),
            ),
          ),

          // ContactListView(),
          // ContactListView(),
          // ContactListView(),
          const ListTile(
            leading: Text(
              'Contacts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            trailing: Text('A',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(contactlistA.length, (index) {
                return ContactListView(
                  contacts: contactlistA[index],
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  contacts: contactlistA[index],
                                )));
                  },
                );
              }),
            ),
          ),

          // ContactListView(),
          // ContactListView(),
          const ListTile(
            trailing: Text('B',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(contactlistB.length, (index) {
                return ContactListView(
                  contacts: contactlistB[index],
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  contacts: contactlistB[index],
                                )));
                  },
                );
              }),
            ),
          ),
          // ContactListView(),
          // ContactListView(),
          // ContactListView(),
          // ContactListView(),
          // ContactListView(),
        ],
      ),
    );
  }
}
