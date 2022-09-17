import '../cupertino_importer.dart';

class TextBar extends StatelessWidget {
  const TextBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 3, 3, 0),
          child: SizedBox(
            // width: double.infinity,
            // color: CupertinoColors.systemGrey2,
            child: Text(
              text,
              style: const TextStyle(
                  color: CupertinoColors.systemGrey,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 0.5,
          color: CupertinoColors.systemGrey.withOpacity(0.5),
        ),
      ],
    );
  }
}
