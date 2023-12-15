import 'package:flutter/material.dart';

import 'classmodel.dart';

class otts extends StatefulWidget {
  const otts({super.key});

  @override
  State<otts> createState() => _ottsState();
}

class _ottsState extends State<otts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.search),
       title: Text('Subscribe'),
       actions: [
         Icon(Icons.search),
       ],
     ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Final:Uttarkhand vs Mumbai',style: TextStyle(color: Colors.black,fontSize: 20),),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Container(height: 300,
                child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: pic.length,
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending in shows',style: TextStyle(color: Colors.black,fontSize: 20),),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending in sports',style: TextStyle(color: Colors.black,fontSize: 20),),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Container(height: 300,
              child: ListView.builder(scrollDirection: Axis.horizontal,
                  itemCount: pic3.length,
                  itemBuilder: (BuildContext,index)
                  {
                    return Container(height: 150,
                      child: Image.network(pic3[index].image,fit: BoxFit.fill,),

                    );
                  }
              ),
            ),
          ],
        ),
      )
    );
  }
}
