import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:webrevue/constants/ColorClass.dart';
import 'package:webrevue/constants/get_rating_percent.dart';
import 'package:webrevue/model/ReviewModal.dart';

class ReviewRatings extends StatelessWidget{

  double facility;
  double management;
  double value;
  double location;
  double design;

  ReviewRatings({this.facility,this.management,this.location,this.value,this.design});
  
  Color getColor(double rating){
    if(rating.toInt()>=0&&rating.toInt()<2){
      return  ColorClass.redColor;
    }else if(rating.toInt()<=2&&rating.toInt()<3){
      return Colors.orangeAccent.shade400;
    }else if(rating.toInt()>=3 &&rating.toInt()<4){
     return  Colors.green.shade500;
    }else if( rating.toInt()>=4){
     return ColorClass.blueColor;
    }else{
      return ColorClass.blueColor;
    }
  }
  
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: FittedBox(fit: BoxFit.fitWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                animation: false,
                lineWidth: 3.5,
                percent: getpercentage(facility),
                center: new Text(
                  facility.toStringAsFixed(1),
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.black26,
                progressColor: getColor(facility),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Facilities",
                      style: const TextStyle(
                          color: const Color(0xff000000),

                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                animation: false,
                lineWidth: 3.5,
                percent: getpercentage(design),
                center: new Text(
                  design.toStringAsFixed(1),
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.black26,
                progressColor: getColor(design),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Design",
                      style: const TextStyle(
                          color: const Color(0xff000000),

                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                animation: false,
                lineWidth: 3.5,
                percent: getpercentage(location),
                center: new Text(
                  location.toStringAsFixed(1),
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.black26,
                progressColor: getColor(location),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Location",
                      style: const TextStyle(
                          color: const Color(0xff000000),

                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                animation: false,
                lineWidth: 3.5,
                percent: getpercentage(value),
                center: new Text(
                 value.toStringAsFixed(1),
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.black26,
                progressColor: getColor(value),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Value",
                      style: const TextStyle(
                          color: const Color(0xff000000),

                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircularPercentIndicator(
                radius: 40.0,
                animation: false,
                lineWidth: 4.0,
                percent: getpercentage(management),
                center: new Text(
                management.toStringAsFixed(1),
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.black26,
                progressColor: getColor(management),
                footer: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Management",
                      style: const TextStyle(
                          color: const Color(0xff000000),

                          fontStyle: FontStyle.normal,
                          fontSize: 14),
                      textAlign: TextAlign.left),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}