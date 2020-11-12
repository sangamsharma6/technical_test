import 'package:flutter/material.dart';
import 'package:technical_test/FoodCard.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List categories = ['Starter', 'All', 'Biryani', 'Burger', 'Pizza', 'Oats'];
  List filterCategories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < categories.length; i++) {
      filterCategories.add({'isSelected': false, 'catname': categories[i]});
    }
  }

  List<Widget> _cards = [
    FoodCard(
        'Chilli Potato',
        'https://i.pinimg.com/564x/dc/69/c2/dc69c2d62b5747f846f0bdc598eee103.jpg',
        '18',
        '30',4),
    FoodCard(
        'Paneer Tikka ',
        'https://i.pinimg.com/564x/f0/1a/ec/f01aec63a53339aeb104e3f0094cc878.jpg',
        '25',
        '100',5),
    FoodCard(
        'Tandoori Chicken',
        'https://i.pinimg.com/236x/aa/93/23/aa932345844438d031885dc7b80e3921.jpg',
        '67',
        '100',4),
    FoodCard(
        'Pasta',
        'https://i.pinimg.com/564x/b5/f0/81/b5f0819d8dd5b4e8616b8b223ea5df74.jpg',
        '29',
        '30',4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MENU',
          style: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.filter_list,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: filterCategories.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      for (int x = 0; x < filterCategories.length; x++) {
                        if (filterCategories[x]['isSelected']) {
                          setState(() {
                            filterCategories[x]['isSelected'] = false;
                          });
                          break;
                        }
                      }
                      setState(() {
                        filterCategories[index]['isSelected'] = true;
                      });
                    },
                    child: Container(
                      width: 80,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                          color: filterCategories[index]['isSelected'] == false
                              ? Colors.grey.shade300
                              : Colors.yellow,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Center(
                        child: Text(
                          filterCategories[index]['catname'],
                          style: TextStyle(
                              color:
                                  filterCategories[index]['isSelected'] == false
                                      ? Colors.black
                                      : Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: GridView.count(mainAxisSpacing: 6,crossAxisSpacing: 6,
            children: _cards,padding: EdgeInsets.all(5.0),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 16 / 22,
          ))
        ],
      ),
    );
  }
}
