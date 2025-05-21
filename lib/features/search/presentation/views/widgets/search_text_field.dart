import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextField(
        style: TextStyle(color: Colors.black),
        enabled: true,
        onChanged: (data) {}, // => _updateCityName(context, data),
        onSubmitted: (value) {}, //async => await _weatherFetch(context, value),

        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {},
            // async => await _weatherFetch(
            //   context,
            //   BlocProvider.of<WeatherCubit>(context).cityName ?? '',
            // ),
            child: Opacity(
              opacity: 0.6,
              child: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
                color: kPrimaryColor,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          // label: const Text('Search'),
          // labelStyle: TextStyle(fontWeight: FontWeight.bold),
          hintText: 'Search for a book ...',
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 15,
          ),
          border: border(),
          enabledBorder: border(),
          focusedBorder: border(),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: kPrimaryColor,
        width: 2,
        style: BorderStyle.solid,
      ),
    );
  }
}
