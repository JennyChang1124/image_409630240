import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  const BPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageBrowse(title: '動物'),
    );
  }
}

class ImageBrowse extends StatefulWidget {
  const ImageBrowse({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ImageBrowse> createState() => _ImageBrowseState();
}

class _ImageBrowseState extends State<ImageBrowse> {
  var images=['assets/5.jpg','assets/56.jpg','assets/11.jpg','assets/6.webp'];
  int imageindex=1;
  String defult_image="assets/5.jpg";

  void previous (){
    if(imageindex<=0){imageindex=4;}
    defult_image = images[imageindex-1];
    imageindex--;
  }
  void next (){
    if(imageindex>=3){imageindex=-1;}
    defult_image = images[imageindex+1];
    imageindex++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap:(){
                const snackBar = SnackBar(
                  content: Text('點選了圖片',
                    textScaleFactor: 1.2,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image.asset(defult_image),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        previous();
                      });
                    },
                    child:const Icon(Icons.keyboard_arrow_left)
                ),
                const SizedBox(width: 100,),
                FloatingActionButton(
                  onPressed: (){
                    setState(() {
                      next();
                    });
                  },
                  child: const Icon(Icons.keyboard_arrow_right)
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
