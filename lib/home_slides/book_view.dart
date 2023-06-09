import 'package:flutter/material.dart';
import 'package:TRACE/constants/my_widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class BookView extends StatelessWidget {
  // String bookName;
  // String bookImage;
  // String bookAuthor;
  // String bookEdition;
  // String bookSize;
  // int rating;
  List<dynamic> search;
  int indexx;

  BookView({
    super.key,
    required this.search,
    required this.indexx,
  });
  // required this.bookAuthor,
  // required this.bookEdition,
  // required this.bookImage,
  // required this.bookName,
  // required this.bookSize,
  // required this.rating

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            search[indexx]['bookName'],
            textAlign: TextAlign.center,
            style: const TextStyle(color: primaryColordark),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined,
                    color: primaryColor))
          ],
          elevation: 0.0,
          backgroundColor: primaryColorLight,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.network(search[indexx]['image']))),
                      const SizedBox(
                        width: 20.0,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              search[indexx]['bookName'],
                              style: const TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            // ignore: prefer_interpolation_to_compose_strings
                            Text('Author: ' + search[indexx]['author'],
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.grey,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 15,
                            ),
                            // ignore: prefer_interpolation_to_compose_strings
                            Text('Size: ' + search[indexx]['size'],
                                style: const TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),
                            const SizedBox(
                              height: 15,
                            ),
                            RatingBar(
                              itemCount: int.parse(search[indexx]['rating']),
                              initialRating: 3,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              onRatingUpdate: (double value) {},
                              ratingWidget: RatingWidget(
                                  full: const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFD600),
                                  ),
                                  half: const Icon(Icons.star,
                                      color: Color(0xFFFFD600)),
                                  empty: const Icon(Icons.star,
                                      color: Color(0xFFFFD600))),
                            ),
                            const SizedBox(
                              height: 12,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: CustomButton(
                    onPressed: () => {},
                    text: 'Start Reading',
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: InvertedCustomButton(
                    onPressed: () => {},
                    text: 'Make available offline',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Comments:',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 50.0,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(4.0)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.0),
                                child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/3177/3177440.png'))),
                        const SizedBox(
                          width: 5.0,
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                            height: 50,
                            child: Column(children: const [
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'User Name',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text('Comment...',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600)),
                            ])),
                      ]),
                ),
                const SizedBox(
                  height: 155,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 290,
                        child: TextField(
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "Write a comment..."),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.emoji_emotions_outlined,
                              color: primaryColor)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send, color: primaryColor))
                    ],
                  ),
                ),
              ]),
        ));
  }
}
