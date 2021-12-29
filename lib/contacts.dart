class Contacts {
  final String imagePath;
  final String name;
  final String contact;

  Contacts(this.imagePath, this.name, this.contact);
}

List<Contacts> recentlist = [
  Contacts("assets/user.jpg", "Sunshine", "+233 456 234 56"),
  Contacts("assets/15.jpg", "Daniela Cortez", "+91 456 114 56"),
  Contacts("assets/2.jpg", "Abdul", "+17 456 114 56"),
];

List<Contacts> contactlistA = [
  Contacts("assets/3.jpg", "Anthony", "+82 456 234 910"),
  Contacts("assets/4.jpg", "Anita", "+233 456 114 141"),
];

List<Contacts> contactlistB = [
  Contacts("assets/5.jpg", "Babs", "+91 456 234 252"),
  Contacts("assets/11.jpg", "Baijah", "+49 456 114 496"),
  Contacts("assets/12.jpg", "Ben", "+71 456 114 212"),
  Contacts("assets/13.jpg", "Boss", "+34 456 114 111"),
];
