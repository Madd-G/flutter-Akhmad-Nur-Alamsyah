import '../cupertino_importer.dart';

class Notifications extends StatelessWidget {
  const Notifications({
    Key? key, required this.color, required this.right, required this.text,
  }) : super(key: key);

  final Color color;
  final double right;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      child: Container(
        height: 17,
        width: 17,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: color),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: CupertinoColors.white, fontSize: 13.0),
          ),
        ),
      ),
    );
  }
}
