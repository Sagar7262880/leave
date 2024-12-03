import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utility/utility.dart';

class Applyleave extends StatefulWidget {
  const Applyleave({super.key});

  @override
  State<Applyleave> createState() => _ApplyleaveState();
}

class _ApplyleaveState extends State<Applyleave> {
  var fromDateCtr = TextEditingController();
  var toDateCtr = TextEditingController();
  var inTimeController = TextEditingController(text: "00:00");
  var outTimeController = TextEditingController(text: '00:00');
  var ccController = TextEditingController();
  var reasonController = TextEditingController();
  var commentController = TextEditingController();
  var attachment = TextEditingController();
  TextEditingController ctrSource = new TextEditingController();
  TextEditingController ctrDestination = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Theme.of(context).primaryColor,
      // backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        title: const Text(
          "Apply Leave",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
              decoration: BoxDecoration(
                // color: white80,
                color: Colors.white.withOpacity(.9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "APPLY LEAVE",
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SimpleDropdown(
                          labelText: "Leave Type",
                          items: const [
                            "Privilege",
                            "Sick",
                            "Unpaid",
                          ],
                          onChanged: (value) {}),
                      const SizedBox(
                        height: 12,
                      ),
                      DatePickerField(label: "From Date", controller: fromDateCtr),
                      const SizedBox(
                        height: 12,
                      ),
                      DatePickerField(label: "To Date", controller: toDateCtr),
                      const SizedBox(
                        height: 12,
                      ),
            
                      SimpleDropdown(
                          labelText: "Select CC",
                          items: const [
                            "Sagar salunke",
                            "Ashitosh Deshmukh",
                            "Krishna tarke",
                            "Mahesh Nalwade"
                          ],
                          onChanged: (value) {}),
                      const SizedBox(
                        height: 12,
                      ),
                      SimpleDropdown(
                          labelText: "Reason",
                          items: const [
                            "Personal",
                            "Official",
                            "Emergency",
                          ],
                          onChanged: (value) {}),
                      const SizedBox(
                        height: 12,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Apply Leave"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
