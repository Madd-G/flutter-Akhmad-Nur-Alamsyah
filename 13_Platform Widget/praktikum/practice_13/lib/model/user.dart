class Users {
  int id;
  String name;
  String message;
  String status;
  String profilePhoto;
  bool seenMessages;
  int unreadMessages;

  Users({
    required this.id,
    required this.name,
    required this.message,
    required this.status,
    required this.profilePhoto,
    required this.seenMessages,
    required this.unreadMessages,
  });
}

List<Users> user = [
  Users(
    id: 1,
    name: 'Alamsyah',
    message: 'Hi',
    status: 'Online',
    profilePhoto: 'assets/images/profile_picture.jpeg',
    seenMessages: true,
    unreadMessages: 1,
  ),
  Users(
    id: 2,
    name: 'Press Room',
    message: 'Ashley: Wow, nice mention!',
    status: '5:54 PM',
    profilePhoto: 'assets/images/profile_picture.jpeg',
    seenMessages: true,
    unreadMessages: 2,
  ),
  Users(
    id: 3,
    name: 'Monica Goldsmith',
    message: 'Photo',
    status: '1:37 PM',
    profilePhoto: 'assets/images/profile2.jpeg',
    seenMessages: false,
    unreadMessages: 12,
  ),
  Users(
    id: 4,
    name: 'Jaina Moore',
    message: 'What?!',
    status: '1:12 PM',
    profilePhoto: 'assets/images/profile_picture.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
  Users(
    id: 5,
    name: 'Paul Dogger',
    message: 'You\'re my friend',
    status: 'Tue',
    profilePhoto: 'assets/images/profile2.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
  Users(
    id: 6,
    name: 'Ben Rodriguez',
    message: 'Update? update my shiny meta',
    status: 'Tue',
    profilePhoto: 'assets/images/profile_picture.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
  Users(
    id: 7,
    name: 'Factory',
    message: 'Churchill: Hello.',
    status: 'Mon',
    profilePhoto: 'assets/images/profile2.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
  Users(
    id: 8,
    name: 'Kate',
    message: 'Document',
    status: 'Mon',
    profilePhoto: 'assets/images/profile2.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
  Users(
    id: 9,
    name: 'Donald',
    message: 'Duck',
    status: 'Mon',
    profilePhoto: 'assets/images/profile2.jpeg',
    seenMessages: false,
    unreadMessages: 3,
  ),
];
