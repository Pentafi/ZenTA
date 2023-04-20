import 'dart:async';

import 'package:flutter/material.dart';

class ZenMode extends StatefulWidget {
  const ZenMode({Key? key}) : super(key: key);

  @override
  _ZenModeState createState() => _ZenModeState();
}

class _ZenModeState extends State<ZenMode> {
  bool _isZenModeEnabled = false;
  int _selectedTime = 0;
  int _remainingTime = 0;
  final List<int> _times = [1, 20, 30, 40, 60];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isZenModeEnabled ? Colors.green : Colors.lightBlue[100],
      body: Stack(
  children: [
    const Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 30, left: 30),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'ZenTA Mode',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 45,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.spa,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                Text(
                  _isZenModeEnabled ? 'ZenTA Mode is enabled' : 'ZenTA Mode is disabled',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
               SizedBox(
                width: 200, // set the desired width
                child: DropdownButtonFormField<int>(
                value: _selectedTime == 0 ? null : _selectedTime,
                decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // reduced padding
                filled: true,
                fillColor: Colors.grey[200],
                hintStyle: const TextStyle(fontSize: 18, color: Colors.grey),
                hintText: 'Select time',
                isDense: true, // reduced height
            ),
              items: _times.map((time) {
              return DropdownMenuItem(
               value: time,
              child: Text(
              '$time minute${time == 1 ? '' : 's'}',
              style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
          ),
        ),
      );
    }).toList(),
    onChanged: (selectedTime) {
      setState(() {
        _selectedTime = selectedTime as int;
        _remainingTime = _selectedTime * 60;
      });
    },
  ),
),

                if (_isZenModeEnabled)
                  const SizedBox(height: 50)
                else
                  const SizedBox(),
                if (_isZenModeEnabled)
                  Text(
                    '$_remainingTime seconds remaining',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                else
                  const SizedBox(),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: _selectedTime == 0
                      ? null
                      : () {
                          setState(() {
                            _isZenModeEnabled = true;
                            _remainingTime = _selectedTime * 60;
                          });
                          Timer.periodic(const Duration(seconds: 1), (timer) {
                            setState(() {
                              _remainingTime--;
                              if (_remainingTime == 0) {
                                _isZenModeEnabled = false;
                                timer.cancel();
                              }
                            });
                          });
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isZenModeEnabled ? Colors.blue : Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    _isZenModeEnabled ? 'Stop ZenTA Mode' : 'Start ZenTA Mode',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
      ),
        ]
    ));
  }
}