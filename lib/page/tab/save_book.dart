import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/details/book_details.dart';

class SaveBook extends StatefulWidget {
  SaveBook({Key? key}) : super(key: key);

  @override
  State<SaveBook> createState() => _SaveBookState();
}

class _SaveBookState extends State<SaveBook> {
  final textStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Хадгалсан номнууд",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => Container(
                      margin: const EdgeInsets.all(3),
                      padding: const EdgeInsets.all(3),
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.amber,
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/image/book.jpg"),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(),
                                Row(
                                  children: [
                                    Text(
                                      bookName[index],
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      author[index],
                                      style: textStyle,
                                    ),
                                    const Text(
                                      "Бауржан",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Хэвлэсэн: ",
                                      style: textStyle,
                                    ),
                                    Text(
                                      "${createDate[index]} ШУТИС",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Хуудас: ",
                                      style: textStyle,
                                    ),
                                    Text(
                                      (123 + index * 9).toString(),
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const Spacer(),
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BookDetailScreen(
                                                title: bookName[index],
                                                zohiogch: author[index],
                                              ),
                                            ),
                                          );
                                        },
                                        child: const Text("Унших"))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  List<String> bookName = [
    'Anna Karenina',
    'To Kill a Mockingbird',
    'The Great Gatsby',
  ];
  List<String> author = [
    'Leo Tolstoy',
    'Harper Lee',
    'F. Scott Fitzgerald',
  ];
  List<String> createDate = [
    '2015',
    '2016',
    '2017',
  ];
}
