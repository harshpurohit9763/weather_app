import 'package:flutter/material.dart';
import 'package:weatherapp/services/weather_api_client.dart';
import 'package:weatherapp/wid_1.dart';
import 'package:weatherapp/wid_2.dart';

import 'modules/model.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatefulWidget {
  WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather('Virar');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Weather app'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ),
          body: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //widget no 1
                      currentweather(
                        Icons.sunny,
                        "${data!.temp! - 273}°C",
                        "${data!.cityName}",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Additional Information"), Divider(),
                      AdditionalInformation(
                          '${data!.wind}',
                          '${data!.himidity}',
                          '${data!.pressure}',
                          '${data!.feels_like}')
                    ],
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container();
              }),
        ));
  }
}
