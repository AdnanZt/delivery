import 'package:delivery/app/domain/entities/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../injection_container.dart';
import '../../viewmodels/weather_view_model.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final vm = sl<WeatherViewModel>();

  @override
  void initState() {
    super.initState();
    vm.onGetWeather();
  }

  @override
  Widget build(BuildContext context) {
    final fullname = widget.name;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bienvenue $fullname '.toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 25.0, top: 25.0),
                ),
                Observer(builder: (_) {
                  return vm.weatherState.when(
                    initial: () => const SizedBox.shrink(),
                    pending: (_) => const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
                    failure: (notice) => Text(notice.title),
                    complete: (data) => _buildDataList(data, context),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDataList(List<Weather> data, BuildContext context) {
    List<Weather> weatherDay = [];

    for (int i = 0; i < data.length; i++) {
      final failureIndex = data.indexWhere((result) => data[i].date.contains('15:00:00'));
      if (failureIndex != -1) {
        weatherDay.add(data[i]);
      }
    }
    return Container(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Center(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: weatherDay.length,
                itemBuilder: (context, index) {
                  final weather = weatherDay[index].weather;
                  final description = weatherDay[index].description;
                  final temperature = weatherDay[index].temperature;
                  final date = weatherDay[index].date;
                  final icon = weatherDay[index].icon;
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network("http://openweathermap.org/img/wn/$icon@2x.png"),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date : $date"),
                          Text("T° : $temperature K"),
                          Text("$weather : $description"),
                        ],
                      ),
                      const SizedBox(height: 100),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
