import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flexpagestyling extends StatelessWidget {
  const Flexpagestyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "flext page",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
        backgroundColor: Colors.blue,
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.blue,
                child: Text(
                    "I believe that when a transaction fails due to issues "
                        "within your system, it's only fair that the charges deducted during"
                        " the attempt are promptly refunded to the customer. After all, we are paying "
                        "for a service, and if that service cannot be completed successfully due to system-"
                        "related problems, customers should not bear the financial burden of these failures.",
                  style: TextStyle(color: Colors.white, ),
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.yellow,
              )),
        ],
      ),
    );
  }
}
