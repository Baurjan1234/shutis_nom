import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/details/book_details.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  final textStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Номнууд",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopupMenuButton(
                      child: Row(
                        children: const [
                          Text(
                            "Агуулга",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Coolicons.chevron_big_down),
                        ],
                      ),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(child: Text('Анагаах ухаан')),
                        const PopupMenuItem(child: Text('Хүний хөгжил')),
                        const PopupMenuItem(child: Text('Эдийн засаг')),
                      ],
                    ),
                    PopupMenuButton(
                      child: Row(
                        children: const [
                          Text(
                            "Хэвлэгдсэн он",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Coolicons.chevron_big_down),
                        ],
                      ),
                      // icon: const Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(child: Text('2020')),
                        const PopupMenuItem(child: Text('2021')),
                        const PopupMenuItem(child: Text('2022')),
                      ],
                    ),
                    PopupMenuButton(
                      child: Row(
                        children: const [
                          Text(
                            "Хэл",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Coolicons.chevron_big_down),
                        ],
                      ),
                      // icon: const Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(child: Text('Монгол')),
                        const PopupMenuItem(child: Text('English')),
                        const PopupMenuItem(child: Text('Japanese')),
                      ],
                    ),
                  ],
                ),
                ...List.generate(
                  bookName.length,
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
                              Text(
                                bookName[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Зохиолч: ",
                                    style: textStyle,
                                  ),
                                  Text(
                                    author[index],
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
                                    "Хэвлэсэн: ",
                                    style: textStyle,
                                  ),
                                  Text(
                                    "${createDate[index]} ШУТИС",
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
                                                    zohiogch: author[index]),
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
      ),
    );
  }

  List<String> bookName = [
    'Anna Karenina',
    'To Kill a Mockingbird',
    'The Great Gatsby',
    'The Color Purple',
    'A Passage to India',
    'Invisible Man',
    'Don Quixote',
    'Belove'
  ];
  List<String> author = [
    'Leo Tolstoy',
    'Harper Lee',
    'F. Scott Fitzgerald',
    'Gabriel García Márquez',
    'E.M. Forster',
    'Ralph Ellison',
    'Miguel de Cervantes',
    'Toni Morrison',
  ];
  List<String> createDate = [
    '2015',
    '2016',
    '2017',
    '2016',
    '2018',
    '2019',
    '2021',
    '2013',
  ];
}
