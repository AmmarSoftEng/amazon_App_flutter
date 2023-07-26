
import 'package:amazon_clone_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddressBox extends StatelessWidget {
  const AddressBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user=Provider.of<UserProvider>(context).user;
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
          Color.fromARGB(225,114,226,221),
             Color.fromARGB(225,162,236,233),
        ],
        stops: [0.5,1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,size: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Delivery to ${user.name} - ${user.address}'
                ,style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                ),

                ),
                ),
                Padding(padding: EdgeInsets.only(left: 5,top: 10),
                child: Icon(Icons.arrow_drop_down,size: 18,color: Colors.black,),
                ),
          ],
        ),
      ),
    );
  }
}