import '../material_importer.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.black54,
        size: 29.0,
      ),
      title: Text(
        text,
        style: const TextStyle(
            color: Colors.black54, fontSize: 18.0, fontWeight: FontWeight.w600),
      ),
      onTap: () {},
    );
  }
}
