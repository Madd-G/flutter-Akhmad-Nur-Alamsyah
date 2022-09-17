import '../cupertino_importer.dart';

class ContactCarousel extends StatelessWidget {
  const ContactCarousel({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: <Widget>[
          Container(
            color: const Color(0x00ffffff),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 20, top: 15, bottom: 15),
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(user[index].profilePhoto),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      user[index].name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      user[index].message,
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff000000),
                        fontWeight: user[index].seenMessages == true
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        user[index].status,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 13,
                            color: CupertinoColors.systemGrey,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
                        child: (user[index].seenMessages == true)
                            ? Container(
                                height: 26,
                                width: 26,
                                decoration: const BoxDecoration(
                                    color: CupertinoColors.activeBlue,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '${user[index].unreadMessages}',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: CupertinoColors.white,
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : Container(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: CupertinoColors.black.withOpacity(0.5),
            height: 0.2,
          )
        ],
      ),
    );
  }
}
