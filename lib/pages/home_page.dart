import 'package:flutter/material.dart';
import 'package:wallet_app_ui/util/my_button.dart';
import 'package:wallet_app_ui/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                )),
          ]),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'My',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Card',
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add),
                )
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // cards
          Container(
            height: 200,
            child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                      balance: 5250.20,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.deepPurple[400]),
                  MyCard(
                      balance: 324.20,
                      cardNumber: 84348347,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.blue[400]),
                  MyCard(
                      balance: 2323.20,
                      cardNumber: 83943034,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.green[400]),
                ]),
          ),
          SizedBox(
            height: 25,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey.shade800,
            ),
          ),

          SizedBox(
            height: 40,
          ),
          // 3 buttons-> send + pay + bill
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    iconImagsPath:
                        'https://cdn-icons-png.flaticon.com/512/8455/8455222.png',
                    buttonText: 'Send'),
                MyButton(
                    iconImagsPath:
                        'https://cdn-icons-png.flaticon.com/512/6963/6963703.png',
                    buttonText: 'Pay'),
                MyButton(
                    iconImagsPath:
                        'https://cdn-icons-png.flaticon.com/512/10613/10613690.png',
                    buttonText: 'Bills'),
              ],
            ),
          ),

          // column status + transactions
          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                //statistic
                MyListTile(
                    iconImagePath: 'lib/assets/icons/statistic.png',
                    tileTitle: 'Statistics',
                    tilesubTitle: 'Payment and Income'),
                MyListTile(
                    iconImagePath: 'lib/assets/icons/transaction.png',
                    tileTitle: 'Transactions',
                    tilesubTitle: 'Transactions History'),
                // transiction
              ],
            ),
          )
        ]),
      ),
    );
  }
}

// fluter pub get-> for assets imagePath