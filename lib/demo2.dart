import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Demo2 extends StatefulWidget {
  const Demo2({Key? key}) : super(key: key);


  @override
  State<Demo2> createState() => _design_pageState();
}

class _design_pageState extends State<Demo2> {
  List<String>names=["Darshan","Amit","Viren","Kuldip","Keyur","khushi","hardik","reshma","krunal"];
  List<String>person=["hi","hello","good morning","how r u","namsate","where are you","hi","hi","hello"];
  // List iconse=[Icons.abc_outlined,Icons.person,Icons.sell_rounded,Icons.add,Icons.offline_bolt,Icons.mobile_friendly
  // ,Icons.abc_outlined,Icons.person,Icons.sell_rounded];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      
        title:const Center(child:  Text("Messages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
        
  
        ),
        body: Center(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
const Icon(Icons.message,color: Colors.blueAccent),   
const Spacer(),                      
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(names[index],style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                     Center(child:  Text(person[index])),

                            ],
                          ),
                        
                        )),
                    //  Center(child:   ,)
                    Spacer(),
                   const Center(
                      child:  Padding(
                        padding: EdgeInsets.only(left: 80),
                        child:  Icon(Icons.replay,color: Colors.blueAccent,),
                      ),
                    ),
                      const  Padding(
                          padding:  EdgeInsets.only(left: 10),
                          child: Icon(Icons.delete,color: Colors.blueAccent,)
                        ),
                       const Padding(
                          padding:  EdgeInsets.only(left: 5),
                          child:  Icon(Icons.share,color: Colors.blueAccent,),
                        )
                      ],
                    )
                    //  Container(height: 50,width: 50,color: Colors.purple,),
                    ),
                    
              );
              
            }),
        )
    );
    
  }
}