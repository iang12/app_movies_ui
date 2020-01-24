import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    //#141A32
    //#FF4900
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 26, 50, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Image.asset(
                  'images/logo_app.jpeg',
                  width: 130.0,
                ),
              ),
              Container(
                height: 180.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network(
                                  'https://img.vixdata.io/pd/jpg-large/pt/sites/default/files/l/liga-da-justica-1016-1400x800.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Text(
                                'LIGA DA JUSTIÇA...',
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                            )
                          ],
                        ));
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                padding: EdgeInsets.all(5.0),
                child: ListView.builder(
                  itemCount: numbers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          color: Color.fromRGBO(255, 73, 0, 1),
                          padding: EdgeInsets.all(5.0),
                          child: Center(
                            child: Text(
                              '#AÇAO',
                              style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 9.0,horizontal: 10.0),
                  child: Text('FILMES LANÇAMENTO',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: ListView.builder(
                  itemCount: numbers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          child: Center(
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w600_and_h900_bestv2/keym7MPn1icW1wWfzMnW3HeuzWU.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child:
              Container(
                padding: EdgeInsets.symmetric(vertical: 9.0,horizontal: 10.0),
                child: Text('FILMES RECENTES',
                    style: TextStyle(
                      fontSize: 19.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: ListView.builder(
                  itemCount: numbers.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          child: Center(
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w600_and_h900_bestv2/keym7MPn1icW1wWfzMnW3HeuzWU.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: Text('FILMES',
                  style: TextStyle(fontSize: 10.0, color: Colors.white)),
              icon: Icon(
                Icons.movie,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              title: Text('SÈRIES',
                  style: TextStyle(fontSize: 10.0, color: Colors.white)),
              icon: Icon(
                Icons.local_movies,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              title: Text(
                'BUSCA',
                style: TextStyle(fontSize: 10.0, color: Colors.white),
              ),
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              title: Text(
                'SOBRE',
                style: TextStyle(fontSize: 10.0, color: Colors.white),
              ),
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}      
