import '../material_importer.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 280.0,
      child: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          Stack(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                margin: const EdgeInsets.all(0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(
                    'assets/images/tree.jpeg',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 35.0,
                    ),
                    CircleAvatar(
                        maxRadius: 38.0,
                        backgroundImage:
                            AssetImage("assets/images/profile_picture.jpeg")),
                    SizedBox(
                      height: 17.0,
                    ),
                    Text(
                      'Jane Doe Doe',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text('(+62)12345678',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400))
                  ],
                ),
              )
            ],
          ),
          const ListTileWidget(
            iconData: Icons.group,
            text: 'New Group',
          ),
          const ListTileWidget(
            iconData: Icons.lock,
            text: 'New Secret Chat',
          ),
          const ListTileWidget(
            iconData: Icons.speaker_group,
            text: 'New Channel',
          ),
          const Divider(
            thickness: 0.5,
          ),
          const ListTileWidget(
            iconData: Icons.perm_contact_calendar_sharp,
            text: 'Contacts',
          ),
          const ListTileWidget(
            iconData: Icons.person_add,
            text: 'Invite Friends',
          ),
          const ListTileWidget(
            iconData: Icons.settings,
            text: 'Settings',
          ),
          const ListTileWidget(
            iconData: Icons.flag_circle,
            text: 'Telegram FAQ',
          ),
        ],
      ),
    );
  }
}
