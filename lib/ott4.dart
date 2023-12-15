import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'classmodel.dart';
import 'color.dart';

class ott4 extends StatefulWidget {
  const ott4({super.key});

  @override
  State<ott4> createState() => _ott4State();
}

class _ott4State extends State<ott4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie_creation_outlined),
        title: Text('Watch movies'
      ),
        actions: [
          Icon(Icons.search,color: Colors.blueAccent,),
        ],
      ),
      body: ListView(
        children: [
            Column(
              children: [

                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250,
                   initialPage: 0,
                      aspectRatio: 16/9,
                      viewportFraction: 1.1,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 1),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      enlargeFactor: 0.15,

                ),
                  itemCount:pic.length,
                  itemBuilder: (BuildContext ,int index,int pageviewindex){
                  return
                    Container(height: 500,
                      width: 400,
                      child: Image.network(pic[index].image,fit: BoxFit.fill,

                        ),
                    )
                    ;
                  }

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hot Right Now',style: TextStyle(
                      color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Image(image: AssetImage('pi/jio.jpg')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Container(height: 300,
                    child: ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: pic2.length,
                        itemBuilder: (BuildContext,index)
                        {
                          return Card(
                            color: Colors.grey,
                            child: Image.network(pic[index].image,fit: BoxFit.fill,
                            ),
                          );
                        }
                    ),
                  ),


                ),

              ],
            ),
          ],
      ),
    );
  }
}
