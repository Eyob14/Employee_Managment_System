export 'screens/notification_list.dart';
export 'screens/notification_details.dart';
export 'screens/send_notification.dart';
export 'screens/sent_notification_list.dart';


// SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Send Notifcations"),
//         ),
//         body: Container(
//           padding: const EdgeInsets.all(40),
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.amber, width: 1),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Card(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 5, left: 10),
//                         child: Text("For:",
//                             style: GoogleFonts.roboto(
//                               fontSize: 16.0,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black,
//                             )),
//                       ),
//                       SizedBox(
//                         width: 15,
//                       ),
//                       //todo: change this to a checklist to choose for whome to send the message

//                       DropdownButton(
//                         // Initial Value
//                         value: dropdownValue,

//                         // Down Arrow Icon
//                         icon: const Icon(Icons.keyboard_arrow_down),

//                         // Array list of items
//                         items: items.map((String items) {
//                           return DropdownMenuItem(
//                             value: items,
//                             child: Text(items),
//                           );
//                         }).toList(),
//                         // After selecting the desired option,it will
//                         // change button value to selected value
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownValue = newValue!;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Message:",
//                           style: GoogleFonts.roboto(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black,
//                           )),
//                       const SizedBox(
//                         height: 10,
//                       ),

//                       //todo: this text becomes the message to send by the sender
//                       TextField(
//                         keyboardType: TextInputType.multiline,
//                         maxLines: 20,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               width: 1,
//                               color: Colors.orange,
//                             ),
//                           ),
//                           hintText: "Enter your message here",
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 30,
//                 ),
//                 //todo: Send the message to the apropriage reciever
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.orange,
//                     padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
//                     textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
//                   ),
//                   onPressed: () {},
//                   child: Text("Send"),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );