import '../cupertino_importer.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_alt_circle_fill),
                label: 'Contacts',
              ),
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.phone_fill),
                label: 'Calls',
              ),
              BottomNavigationBarItem(
                icon: Stack(children: const [
                  Icon(CupertinoIcons.chat_bubble_2_fill),
                  Notifications(
                    color: Color(0xffC36C63),
                    right: 0,
                    text: '9',
                  ),
                ]),
                label: 'Chats',
              ),
              const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid),
                label: 'Settings',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoPageScaffold(
              navigationBar: const CupertinoNavigationBar(
                backgroundColor: Color(0x00ffffff),
                leading: Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 14.0, 0, 14.0),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                middle: Text(
                  'Chats',
                ),
                trailing: Icon(
                  CupertinoIcons.app_badge,
                  size: 20.0,
                  color: CupertinoColors.activeBlue,
                ),
              ),
              child: SafeArea(
                child: Wrap(
                  children: [
                    Column(
                      children: const [
                        SearchTextField(),
                        SegmentedControl(),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
