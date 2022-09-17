import '../cupertino_importer.dart';

enum Screen { allChats, work, unread, personal }

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({super.key});

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  Screen _selectedSegment = Screen.work;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0x00ffffff),
      child: Column(
        children: [
          CupertinoSegmentedControl<Screen>(
            padding: const EdgeInsets.fromLTRB(5, 7, 5, 7),
            selectedColor: const Color(0x00F7F7F7),
            unselectedColor: const Color(0x00F7F7F7),
            borderColor: const Color(0x00F7F7F7),
            groupValue: _selectedSegment,
            onValueChanged: (Screen? value) {
              if (value != null) {
                setState(
                  () {
                    _selectedSegment = value;
                  },
                );
              }
            },
            children: const <Screen, Widget>{
              Screen.allChats: TextBar(
                text: 'All Chats',
              ),
              Screen.work: TextBar(text: 'Work'),
              Screen.unread: TextBar(text: 'Unread'),
              Screen.personal: TextBar(text: 'Personal'),
            },
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: CupertinoColors.activeBlue,
            child: Container(
              padding: const EdgeInsets.only(right: 15, left: 7),
              color: const Color(0x00ffffff),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: user.length,
                itemBuilder: (context, index) {
                  return ContactCarousel(
                    index: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
