
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const KindaCodeDemo(),
    );
  }
}
// implement the main page
class KindaCodeDemo extends StatefulWidget {
  const KindaCodeDemo({Key? key}) : super(key: key);

  @override
  State<KindaCodeDemo> createState() => _KindaCodeDemoState();
}
class _KindaCodeDemoState extends State<KindaCodeDemo> {
  // dummy data to feed the grid view
  // list of images
  final List<Map<String, dynamic>> _images = [
    {
      'id': '1',
      'title': 'One',
      'url': 'data:image/png;base64,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'
    },
    {
      'id': '2',
      'title': 'Two',
      'url': 'data:image/jpeg;base64,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'
    },
    // {
    //   'id': '3',
    //   'title': 'Three',
    //   'url': 'data:image/jpeg;base64,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'
    // },
    // {
    //   'id': '4',
    //   'title': 'Four',
    //   'url': 'https://play-lh.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo'
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Apps')),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        // implement the grid view
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: _images.length,
            itemBuilder: (BuildContext ctx, index) {
              return InkWell(
                key: ValueKey(_images[index]['id']),
                // navigate to the detail page on tap
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    // pass the image data to the detail page
                      builder: (context) => DetailPage(_images[index])));
                },
                // implement the Hero widget
                child: Hero(
                  // important: the tag
                  tag: _images[index]['id'],
                  // display the image
                  child: Image.network(
                    _images[index]['url'],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
// detail page
class DetailPage extends StatelessWidget {
  // get the image data that was passed from the main page
  final Map image;
  const DetailPage(this.image, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // implement the app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(image['title']),
        actions: [
          // this button does the same thing as the back button
          // I put it here to show you how to go back to the previous screen by implementing your own code
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: Center(
        // implement the Hero widget
        child: Hero(
          // important: the tag
          tag: image['id'],
          child: Image.network(image['url']),
        ),
      ),
    );
  }
}
