// is file me saare app ka model h , yaani ki structure h , kya kya , kha kha hoga .
class Attachment {
  // ye attachment naam ki class h , jisme constructor h attachment naam ka hi , or usme , url required h
  const Attachment({
    required this.url,
  });

  final String url; // url ko string  ki form m rkha h
}

class Email {
  // ye second class h , email hogi jo, isme chahiye sender , recepients, subject , content (ye sb jrrori h , hrr entery ke paas honge ) uske baad waale do kisi me ho skte h , kisi me ni , toh jroori nahi hainnnn)
  const Email({
    required this.sender,
    required this.recipients,
    required this.subject,
    required this.content,
    this.replies = 0,
    this.attachments = const [],
  });

  final User
      sender; // ab yha prr hrr cheej ka type define kiya h , jaise subject string hoga , content bhi string hoga
  final List<User> recipients; // ye list hogi
  final String subject;
  final String content;
  final List<Attachment> attachments; // ye bhi list hogi
  final double replies; // ye number hoga
}

class Name {
  const Name({
    required this.first, // isme name me last name or first  name dono honge
    required this.last,
  });

  final String first; // dono string honge
  final String last;
  String get fullName => '$first $last'; // dono ko jodke likha h
}

class User {
  const User({
    required this.name,
    required this.avatarUrl,
    required this.lastActive,
  });

  final Name name;
  final String avatarUrl;
  final DateTime lastActive;
}
