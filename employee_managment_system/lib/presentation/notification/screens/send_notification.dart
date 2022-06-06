import 'package:flutter/material.dart';

class SendNotification extends StatelessWidget {
  const SendNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Send Notifcations"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.amber, width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        Text("For: "),
                        //todo: change this to a checklist to choose for whome to send the message
                        Text("owner"),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const Text("message: "),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          //todo: this text becomes the message to send by the sender
                          child: Text("this is the message to send"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  //todo: Send the message to the apropriage reciever
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Send"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
