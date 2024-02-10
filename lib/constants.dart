import 'package:flutter/material.dart';

const bottomSheetTextStyle =TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 30);
const FABIcon = Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          );

var bottomSheetButtonStyle = ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(0), // Adjust radius for rectangle
                  ),
                ),
              );

const bottomSheetTextFieldStyle =  InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 4)),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 5),
                ),
              );