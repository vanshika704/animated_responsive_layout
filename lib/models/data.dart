import 'models.dart';

// isme , jo humne model bnaya h , uska data diya h ,
final User user_0 = User(
    //  user ko call lgai , usko name diya
    name: const Name(
        first: 'Me',
        last: ''), // name ko call lgai , usme last name or first name diya
    avatarUrl: 'assets/avatar_1.png',
    lastActive: DateTime.now());
final User user_1 = User(
    name: const Name(first: '老', last: '强'),
    avatarUrl: 'assets/avatar_2.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 10)));
final User user_2 = User(
    name: const Name(first: 'So', last: 'Duri'),
    avatarUrl: 'assets/avatar_3.png',
    lastActive: DateTime.now().subtract(const Duration(minutes: 20)));
final User user_3 = User(
    name: const Name(first: 'Lily', last: 'MacDonald'),
    avatarUrl: 'assets/avatar_4.png',
    lastActive: DateTime.now().subtract(const Duration(hours: 2)));
final User user_4 = User(
    name: const Name(first: 'Ziad', last: 'Aouad'),
    avatarUrl: 'assets/avatar_5.png',
    lastActive: DateTime.now().subtract(const Duration(hours: 6)));

final List<Email> emails = [
  Email(
    // yha email ki list h
    sender: user_1, // sender ka name user_1 h
    recipients: [], // recepients ka array aayega
    subject: '豆花鱼',
    content: '最近忙吗？昨晚我去了你最爱的那家饭馆，点了他们的特色豆花鱼，吃着吃着就想你了。',
  ),
  Email(
    sender: user_2,
    recipients: [],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week? I'm so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
      sender: user_3,
      recipients: [],
      subject: 'This food show is made for you',
      content:
          "Ping– you'd love this new food show I started watching. It's produced by a Thai drummer who started getting recognized for the amazing vegan food she always brought to shows.",
      attachments: [const Attachment(url: 'assets/thumbnail_1.png')]),
  Email(
    sender: user_4,
    recipients: [],
    subject: 'Volunteer EMT with me?',
    content:
        'What do you think about training to be volunteer EMTs? We could do it together for moral support. Think about it??',
  ),
];

final List<Email> replies = [
  // ye replies hain , jo aayi hui mails ko humne diye , same cheej h , class bnai , usme data diya
  Email(
    sender: user_2,
    recipients: [
      user_3,
      user_2,
    ],
    subject: 'Dinner Club',
    content:
        "I think it's time for us to finally try that new noodle shop downtown that doesn't use menus. Anyone else have other suggestions for dinner club this week? I'm so intrigued by this idea of a noodle restaurant where no one gets to order for themselves - could be fun, or terrible, or both :)\n\nSo",
  ),
  Email(
    sender: user_0,
    recipients: [
      user_3,
      user_2,
    ],
    subject: 'Dinner Club',
    content:
        "Yes! I forgot about that place! I'm definitely up for taking a risk this week and handing control over to this mysterious noodle chef. I wonder what happens if you have allergies though? Lucky none of us have any otherwise I'd be a bit concerned.\n\nThis is going to be great. See you all at the usual time?",
  ),
];
// poore code me  seekhne wali  baat ye h ki data kaise diya jaata h function ko call lgake
// agr dekha jaaaye , toh structure kya h ?
// user ko call lgai jaati h , or jo humne required parameters set kiye the , unko data diya jaa rha h
// aur humne jo data diya h , usko humne list me diya h ,
// aur humne jo list diya h , usko humne function ko pass kiya h
// aur function ne usko use kiya h , or usko reply me diya h ,
// aur humne jo reply diya h , usko humne list me diya h
