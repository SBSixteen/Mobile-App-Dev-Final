import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.76,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.network("https://wallpaperaccess.com/full/623055.jpg"),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color.fromARGB(232, 0, 0, 0),
                )),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(32.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Analytic Data",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            "Apple Officer",
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.bookmark_added_sharp,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Center(
                              child: Text(
                                "Full Time",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Center(
                              child: Text(
                                "Offline",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Center(
                              child: Text(
                                "1 Years EXP",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Discover how you can make an impacet, see our areas of work, worldwide locations and oppurtunities for students",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(children: [
                      Text(
                        "250\$/Month",
                        style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                                              Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    "1 Week Ago",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ),
                            ),
                          ),
                        ),

                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
