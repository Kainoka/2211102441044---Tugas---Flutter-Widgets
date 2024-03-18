import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Halo Indra!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                ),
                child: Text('Container Widget'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.star),
                  Icon(Icons.thumb_up),
                ],
              ),
              Image.network(
                'https://picsum.photos/seed/picsum/200/300',
                width: 1000,
                height: 300,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey,
                  ),
                  Text(
                    'Stack',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('Padding Widget'),
              ),
              Center(
                child: Text('Center Widget'),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'AspectRatio',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return Container(
                    color: Colors.orange,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Grid Item $index',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
