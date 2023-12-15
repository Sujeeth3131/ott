import 'package:flutter/material.dart';

import 'classmodel.dart';

class ott22 extends StatelessWidget {
  const ott22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie),
        title: ElevatedButton(onPressed: (){}, child:Text('Subscribe') ,),
        actions: [
          Icon(Icons.search,color: Colors.green,),
        ],
      ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hot Right Now',
                style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            Image(image: AssetImage('pi/jio.jpg')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The 100 Crore Club',
                style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold),),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Container(height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
            Text('Top 10 Movies in India Today',
              style: TextStyle(
                  color: Colors.black,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Container(height: 300,
                child: ListView.builder(scrollDirection: Axis.horizontal,
                    itemCount: pic2.length,
                    itemBuilder: (BuildContext,index)
                    {
                      return Card(
                        color: Colors.grey,
                        child: Image.network(pic4[index].image,fit: BoxFit.fill,
                        ),
                      );
                    }
                ),
              ),


            ),
          ],),
        ),

    );
  }
}
