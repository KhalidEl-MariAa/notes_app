import 'package:flutter/material.dart';

class customNote extends StatelessWidget {
  const customNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 0),
      child: Container(
        padding: const EdgeInsets.only(top: 16,bottom: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber[300]),
        
        child: Column(mainAxisSize: MainAxisSize.min,
        children: [ListTile(title:const Padding(
          padding: EdgeInsets.only(bottom:16),
          child:  Text('Flutter Tips',style: TextStyle(fontSize: 30,color: Colors.black)),
        ) ,
        subtitle: Text('Build ME here please bhuhijiojijii',style: TextStyle(color: Colors.black.withOpacity(0.4)),),
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,size: 30,)), ),
        
        
        Padding(
          padding: const EdgeInsets.only(top :10,left: 293),
          child: Text('${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',style:  TextStyle(color: Colors.black.withOpacity(0.3)),),
        )]),
      ),
    );
  }
}