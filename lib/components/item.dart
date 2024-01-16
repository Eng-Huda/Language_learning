import 'package:flutter/material.dart';
import 'package:language_learning/models/data1.dart';
import 'package:audioplayers/audioplayers.dart';
class Item extends StatelessWidget {
  const Item({required this.data,required this.color});
final Data1 data;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color:color,
      child: Row(
        children: [
          data.image == null ?  SizedBox():
          Container(color:Color(0xffFFF6DC),

              child: Image.asset(data.image!)),
          Padding(
            padding: const EdgeInsets.only(left:16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data.JpName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    data.EnName,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ]),
          ),
          Spacer(flex:1),
          Padding(
            padding: const EdgeInsets.only(right:16),
            child: IconButton(splashColor:Colors.amber,icon:Icon(
                Icons.play_arrow,
                color: Colors.white,
                size:30
            ),
            onPressed: () async{
            final player = AudioPlayer();
              await player.setSource(AssetSource(data.audio));
             // player.setSource(AssetSource('sounds/numbers/number_two_sound.mp3'));
               player.resume();
            //final player = AudioPlayer();
           // await player.play(UrlSource('https://p.scdn.co/mp3-preview/7339548839a263fd721d01eb3364a848cad16fa7?cid=a58345ad6cf4414987774f6a1528198d'));
            }),
          )
        ],
      ),
    );
  }
}
