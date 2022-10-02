import 'package:flutter/material.dart';
import 'data_detail.dart';
import 'tourism_place.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kunjungi Tempat Keinginanmu <3',
        style: TextStyle(fontSize:20),
          textAlign:TextAlign.center,)
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DataDetail(place: place)));
            },
            child: Card(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Image.network(place.imageUrls[0], width: 150,height: 100,),

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(place.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                            Text(place.location,style: TextStyle(fontWeight: FontWeight.w500),),
                            Text(place.ticketPrice),
                          ],
                        )
                    ),

                    //Icon(Icons.arrow_forward_rounded)

                  ],
                )
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}