import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  // const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '$teamAPoints',
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              )),
                          onPressed: () {
                            setState(() {
                              teamAPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          onPressed: () {
                            setState(() {
                              teamAPoints = teamAPoints + 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 100,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '$teamBPoints',
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              )),
                          onPressed: () {
                            setState(() {
                              teamBPoints++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
