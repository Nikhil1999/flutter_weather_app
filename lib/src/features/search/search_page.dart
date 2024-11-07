import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/src/core/apis/models/location/location_model.dart';
import 'package:weather/src/core/configs/color_config.dart';
import 'package:weather/src/core/configs/string_config.dart';
import 'package:weather/src/core/configs/style_config.dart';
import 'package:weather/src/core/utils/debouncer.dart';
import 'package:weather/src/core/utils/widgets/loader.dart';
import 'package:weather/src/features/home/providers/weather_provider.dart';
import 'package:weather/src/features/search/providers/search_location_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConfig.black,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    SearchLocationProvider provider = context.watch();

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.chevron_left_rounded,
                    size: 32.0,
                    color: ColorConfig.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: _SearchBar(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (provider.isLoading) const Loader(color: ColorConfig.white),
                if (!provider.isLoading && provider.locations.isEmpty)
                  const _Message(text: StringConfig.nothingToShowHere),
                if (!provider.isLoading && provider.locations.isNotEmpty)
                  Expanded(
                    child: _LocationList(locations: provider.locations),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  _SearchBar();

  final Debouncer debouncer = Debouncer(
    duration: const Duration(milliseconds: 600),
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onChanged: (value) {
        SearchLocationProvider provider = context.read();
        debouncer.run(() {
          if (value.trim().isNotEmpty) {
            provider.loadLocations(query: value);
          }
        });
      },
      cursorColor: ColorConfig.white.withOpacity(0.7),
      cursorWidth: 2,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.sentences,
      style: StyleConfig.text.style.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorConfig.white.withOpacity(0.7),
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 12.0,
        ),
        hintText: StringConfig.typeCityNameHere,
        hintStyle: StyleConfig.text.style.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ColorConfig.white.withOpacity(0.4),
        ),
        border: MaterialStateOutlineInputBorder.resolveWith(
          (states) => const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _LocationList extends StatelessWidget {
  final List<LocationModel> locations;

  const _LocationList({
    required this.locations,
  });

  Future<void> setLocation(
    NavigatorState navigator,
    WeatherProvider provider,
    LocationModel location,
  ) async {
    provider.loadWeather(
      lat: location.lat.toDouble(),
      lng: location.lon.toDouble(),
    );
    await Future.delayed(const Duration(milliseconds: 400));
    navigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index) {
        LocationModel model = locations[index];
        return GestureDetector(
          onTap: () => setLocation(
            Navigator.of(context),
            context.read(),
            model,
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.transparent,
            child: Text(
              '${model.name}${model.state != null ? ', ${model.state!}' : ''}',
              style: StyleConfig.text.style.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorConfig.white.withOpacity(0.7),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Message extends StatelessWidget {
  final String text;

  const _Message({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: StyleConfig.text.style.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: ColorConfig.white.withOpacity(0.7),
      ),
    );
  }
}
