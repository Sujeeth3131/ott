import 'package:flutter/material.dart';
import 'package:newott/ottsports.dart';
import 'package:newott/ottvideo.dart';

import 'classmodel.dart';

class ott5 extends StatefulWidget {
  const ott5({super.key});

  @override
  State<ott5> createState() => _ott5State();
}

class _ott5State extends State<ott5> {
  get child => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

      title:  TextFormField(
         decoration: InputDecoration(filled: true,fillColor: Colors.white,
           prefixIcon: Icon(Icons.search),
           suffixIcon: Icon(Icons.keyboard_voice,color: Colors.blue),
         border: OutlineInputBorder()),

      ),



     ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending Searches',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:  Container(height: 180,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>ottv()));
                    });
                  },
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: pic.length,
                      itemBuilder: (BuildContext,index)
                      {
                        return Container(height: 150,
                          child: Image.network(pic[index].image,fit: BoxFit.fill,
                          ),
                        );
                      }
                  ),
                ),
              ),


            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending in shows',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
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
                        child: Image.network(pic2[index].image,fit: BoxFit.fill,
                        ),
                      );
                    }
                ),
              ),


            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Trending in sports',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
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
