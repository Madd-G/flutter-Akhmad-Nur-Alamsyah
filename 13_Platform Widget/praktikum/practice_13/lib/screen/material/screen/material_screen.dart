import '../material_importer.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF59779A),
          title: const Text('Telegram'),
          // leading: const Icon(Icons.list),
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: const DrawerWidget(),
        body: Container(
          padding: const EdgeInsets.only(right: 15, left: 7),
          color: Colors.white,
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
    );
  }
}
