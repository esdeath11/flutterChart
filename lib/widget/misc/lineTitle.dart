import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles{
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
        showTitles: true,
        margin: 8,
        reservedSize: 30,
        getTextStyles: (value) => const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
        getTitles: (value){
          switch (value.toInt()){
            case 1:
              return '19/3';
            case 2:
              return '20/3';
            case 3:
              return '21/3';
            case 4:
              return '22/3';
            case 5:
              return '23/3';
            case 6:
              return '24/3';
            case 7:
              return '25/3';
          }
          return '';
        }
    ),
    leftTitles: SideTitles(
        showTitles: true,
        margin: 8,
        reservedSize: 38,
        getTextStyles: (value) => const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
        getTitles: (value){
          switch (value.toInt()){
            case 0:
              return '';
            case 2:
              return '200';
            case 4:
              return '400';
            case 6:
              return '600';
            case 8:
              return '800';
            case 10:
              return '1000';
          }
          return '';
        }
    ),
    rightTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitles: (value){
          switch (value.toInt()){
            case 15:
              return '';
            case 20:
              return '';
            case 13:
              return '';
          }
          return '';
        }
    ),
    topTitles: SideTitles(
        showTitles: true,
        reservedSize: 20,
        getTitles: (value){
          switch (value.toInt()){
            case 15:
              return '';
            case 20:
              return '';
            case 13:
              return '';
          }
          return '';
        }
    ),
  );
}