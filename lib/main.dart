import 'package:basketball_counter_app/Cubits/counter_cubit.dart';
import 'package:basketball_counter_app/Cubits/counter_state.dart';
import 'package:basketball_counter_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(BasketballCounterApp());

class BasketballCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        // To Remove Red Box On Top Right Corner
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  int teamAPoints = 0, teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is CounterAIncrementalState) {
          teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        } else {
          teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            title: const Center(
              child: Text(
                'Counter Application',
                style: TextStyle(fontSize: 24, fontFamily: 'YoungSerif'),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(
                              fontSize: 142,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'A', buttonIndex: 1);
                              },
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'A', buttonIndex: 2);
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'A', buttonIndex: 3);
                              },
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      /* ------------------------ */
                      const SizedBox(
                        height: 400,
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(
                              fontSize: 142,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                minimumSize: const Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'B', buttonIndex: 1);
                              },
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'B', buttonIndex: 2);
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: const Size(150, 50)),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .incrementPoints(
                                        teamName: 'B', buttonIndex: 3);
                              },
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                const SizedBox(height: 60),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).incrementPoints(
                        teamName: 'A', buttonIndex: -teamAPoints);
                    BlocProvider.of<CounterCubit>(context).incrementPoints(
                        teamName: 'B', buttonIndex: -teamBPoints);
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
