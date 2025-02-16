// ignore_for_file: must_be_immutable, deprecated_member_use, unused_field

import 'package:bmi_calc_app/results_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  late String? _gender;
  late Color maleIconColor = Color(0xff4c4f5e).withOpacity(0.3);
  late Color femaleIconColor = Color(0xff4c4f5e).withOpacity(0.3);
  int height = 180, age = 20, weight = 60;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator', style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget._gender = 'male';
                      widget.maleIconColor = Colors.white.withOpacity(0.3);
                      widget.femaleIconColor = Color(
                        0xff4c4f5e,
                      ).withOpacity(0.3);
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: widget.maleIconColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/male_icon.svg',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget._gender = 'Female';
                      widget.femaleIconColor = Colors.white.withOpacity(0.3);
                      widget.maleIconColor = Color(0xff4c4f5e).withOpacity(0.3);
                    });
                  },
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: widget.femaleIconColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/female_icon.svg',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff4c4f5e).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 400,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '${widget.height.toString()} cm',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.grey[600],
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: widget.height.toDouble(),
                      min: 120,
                      max: 250,
                      onChanged: (double newValue) {
                        setState(() {
                          widget.height = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff4c4f5e).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Text(
                        widget.weight.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.weight--;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.weight++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xff4c4f5e).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      Text(
                        widget.age.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.age--;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff4c4f5e).withOpacity(0.9),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                setState(() {
                                  widget.age++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultsView()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffeb1555),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              fixedSize: Size(500, 70),
            ),
            child: Text(
              'Calculate',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
