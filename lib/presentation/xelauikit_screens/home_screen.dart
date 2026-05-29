import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui'; // THÊM DÒNG NÀY VÀO ĐẦU FILE

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: Column(
        children: [
          SizedBox(
            height: 225,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        width: screenWidth,
                        height: 159,
                        color: Color(0xFF8557A0),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 9, 16, 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/avatar1.png',
                                      width: 42, height: 42),
                                  SizedBox(width: 12),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Total Balance',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFF3F3F3))),
                                      Text('\$ 75,259',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF))),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(9)),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Positioned(
                    top: 113,
                    left: 16,
                    right: 16,
                    child: Container(
                      width: 358,
                      height: 97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 10, 12, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'January budget',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF242424)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '\$ 480',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF2836B5)),
                                          ),
                                          WidgetSpan(
                                            child: Transform.translate(
                                                offset: const Offset(0, 2),
                                                child: Text(
                                                  '/ \$820',
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xFF838486)),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '64%',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF707070)),
                                    )
                                  ],
                                ),
                                SizedBox(height: 8),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(2),
                                  child: SizedBox(
                                    height: 4,
                                    child: LinearProgressIndicator(
                                      borderRadius: BorderRadius.circular(2),
                                      value: 0.64,
                                      backgroundColor: Color(0xFFF3F3F3),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xFF8557A0)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Daily budget - (\$26.45 - 45.33)',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF707070)),
                                    ),
                                    Text(
                                      '19 days left',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF707070)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallets',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF242424)),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF489FCD)),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                        width: 155,
                        height: 97,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFEBF0FA),
                              Color(0xFFDCE4F7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(14.25),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 12, 16, 12),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total Balance',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF242424)),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '\$10,000',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '.00',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF838486)),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/icon-1.png',
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '. . . .',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10,
                                            color: Color(0xFF242424)),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        '3456',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xFF242424)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        width: 155,
                        height: 97,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFEAF5EE),
                                Color(0xFFDCEFE3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(14.25),
                            border:
                                Border.all(color: Colors.white, width: 2.0)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(16, 12, 16, 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total Balance',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF242424)),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '\$10,000',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '.00',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF838486)),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                          width: 24,
                                          height: 24,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF12D14C),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                              'assets/images/icon-2.png'))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    'Cach',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF242424)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xFF242424)),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xFF489FCD)),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF707070)),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFDEBDC5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                      border: Border.all(
                                                          color:
                                                              Color(0xFF893547),
                                                          width: 2)),
                                                  child: Image.asset(
                                                    'assets/images/icon-3.png',
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 25,
                                                    left: 25,
                                                    child: Container(
                                                      width: 14,
                                                      height: 14,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xFFDEBDC5),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xFF893547),
                                                              width: 2)),
                                                      child: Image.asset(
                                                        'assets/images/icon-4.png',
                                                      ),
                                                    ))
                                              ]),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'ALDREES 303',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '07-01-2023',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF707070)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '-\$32.00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFE25C5C)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Stack(
                                              clipBehavior: Clip.none,
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFDEBDC5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/icon-5.png',
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 25,
                                                  left: 25,
                                                  child: Image.asset(
                                                    'assets/images/icon-6.png',
                                                  ),
                                                )
                                              ]),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'ABYAN CAPITAL',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '07-01-2023',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF707070)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '-\$170.00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFE25C5C)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFDEBDC5),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                border: Border.all(
                                                  color: Color(0xFF893547),
                                                  width: 2,
                                                )),
                                            child: Image.asset(
                                                'assets/images/icon-7.png'),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Gryb Company',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '07-01-2023',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF707070)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '-\$28.00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFE25C5C)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFCEE2E8),
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                border: Border.all(
                                                    color: Color(0xFF619CA4),
                                                    width: 2)),
                                            child: Image.asset(
                                                'assets/images/icon-8.png'),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'BANK AL-JAZIRA',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFF242424)),
                                              ),
                                              Text(
                                                '07-01-2023',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF707070)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '+\$850.00',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF53D258)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
