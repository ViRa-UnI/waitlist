import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

int calculateRemainingTime(
  DateTime createdTime,
  String waitingTime,
) {
  // Convert waiting time (in minutes) to Duration
  int waitingTimeInMinutes = int.parse(waitingTime);
  Duration waitingDuration = Duration(minutes: waitingTimeInMinutes);

  // Calculate the expiry time
  DateTime expiryTime = createdTime.add(waitingDuration);

  // Manually calculate the difference in days, hours and minutes
  int diffDays = expiryTime.day - DateTime.now().day;
  int diffHours = expiryTime.hour - DateTime.now().hour;
  int diffMinutes = expiryTime.minute - DateTime.now().minute;

  // Adjust for negative minutes
  if (diffMinutes < 0) {
    diffHours -= 1;
    diffMinutes += 60;
  }

  // Adjust for negative hours
  if (diffHours < 0) {
    diffDays -= 1;
    diffHours += 24;
  }

  // Convert the difference to total minutes
  int totalDiffMinutes = (diffDays * 24 * 60) + (diffHours * 60) + diffMinutes;

  // Ensure the result doesn't go below zero
  totalDiffMinutes = math.max(0, totalDiffMinutes);

  // Log the values
  // print('Created Time: $createdTime');
  // print('Waiting Time: $waitingTime');
  // print('Expiry Time: $expiryTime');
  // print('Current Time: ${DateTime.now()}');
  // print('Manually Calculated Remaining Time: $totalDiffMinutes');

  return totalDiffMinutes;
}

int calculateRemainingTimeInMinutes(
  String createdTimeString,
  String waitingTimeString,
) {
// Check for null values
  if (createdTimeString == null || waitingTimeString == null) {
    return 0; // Return 0 if either value is null
  }

  // Parse the createdTime
  DateTime? parsedTime;
  try {
    parsedTime = DateTime.parse(createdTimeString);
  } catch (e) {
    print("Error parsing date: $e");
    return 0; // Return 0 if there's an error parsing the date
  }

  // Parse the waitingTime
  int? waitingTimeInMinutes;
  try {
    waitingTimeInMinutes = int.parse(waitingTimeString);
  } catch (e) {
    print("Error parsing waiting time: $e");
    return 0; // Return 0 if there's an error parsing the waiting time
  }

  // Convert waiting time (in minutes) to Duration
  Duration waitingDuration = Duration(minutes: waitingTimeInMinutes);

  // Calculate the expiry time
  DateTime expiryTime = parsedTime.add(waitingDuration);

  // Calculate the remaining time
  Duration remainingTime = expiryTime.difference(DateTime.now());

  // If the remaining time is negative, return 0
  if (remainingTime.isNegative) {
    return 0;
  }

  return remainingTime.inMinutes;
}
