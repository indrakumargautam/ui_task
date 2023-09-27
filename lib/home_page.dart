import 'package:flutter/material.dart';



class ModalBottomSheetDemo extends StatefulWidget {
  const ModalBottomSheetDemo({Key? key}) : super(key: key);

  @override
  State<ModalBottomSheetDemo> createState() => _ModalBottomSheetDemoState();
}

class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('aseet/wallpaper.jpg'),
            fit: BoxFit.cover,


          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.arrow_downward),
                  ),
                  Container(
                    child: Icon(Icons.favorite_border,color: Colors.red,),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height* 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:30,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: Center(child: Text('ON SALE',style: TextStyle(color: Colors.white),)),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('𝐄𝐢𝐟𝐟𝐞𝐥 𝐓𝐨𝐰𝐞𝐫',style: TextStyle(fontSize: 30,color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.white,size: 20,),
                          Text('Paris France',style: TextStyle(fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                )
            ),
            DraggableScrollableSheet(
                initialChildSize: .2,
                minChildSize: .1,
                maxChildSize: .8,
                builder: (BuildContext context, ScrollController scrollController){
                  return  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12) )
                      ),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(21)
                                ),
                              ),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(21),
                                              child: Image.asset('aseet/s1.jpg',height: 100,width: 100,fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(21),
                                              child: Image.asset('aseet/s2.jpg',height: 100,width: 100,fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(21),
                                              child: Image.asset('aseet/s3.jpg',height: 100,width: 100,fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:ClipRRect(
                                              borderRadius: BorderRadius.circular(21),
                                              child: Image.asset('aseet/s4.jpg',height: 100,width: 100,fit: BoxFit.cover),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(21),
                                              child: Image.asset('aseet/s5.jpg',height: 100,width: 100,fit: BoxFit.cover),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Why was the Eiffel Tower built? The Eiffel Tower was built to be one the main attractions at the Paris Worlds \n'
                                      'Fair in 1889. That year, the Worlds Fair covered the entire\n'
                                      ' Champ de Mars in Paris and its focus was the vast constructions in iron and steel that were the great industrial advancement of that time'
                                    ,style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50,),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('aseet/s2.jpg',height:300,fit: BoxFit.cover,),
                              ),
                              SizedBox(height: 50,),
                              Container(
                                child: Text('𝐓𝐨𝐩 𝐋𝐢𝐠𝐡𝐭',style: TextStyle(fontSize: 30,color: Colors.black),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset("aseet/s5.jpg",height: 100,width: 150,),
                                  ),
                                  Container(
                                    child: Text('The Eiffel Tower is a wrought-iron lattice tower on the Champ \n'
                                        'de Mars in Paris, France. Constructed from 1887, it is\n'
                                        ' named after the engineer Gustave Eiffel, whose company designed\n'
                                        ' and built the tower. Locally nicknamed "La dame de fer", it was constructed\n'
                                        ' from 1887 to 1889 as the centerpiece of the 1889 World'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )


                  );
                }

            ),
          ],
        ),
      ),
    );
  }

}
