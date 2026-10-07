import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 0,
            max: 400,
            activeColor: AppTheme.primaryColor,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //     value: _sliderEnable,
          //     onChanged: (value) {
          //       _sliderEnable = value ?? true;
          //       setState(() {});
          //     }),
          //       Switch(
          // value: _sliderEnable,
          // onChanged: (value) {
          //   _sliderEnable = value;
          //   setState(() {});
          // }),
          CheckboxListTile(
              title: Text('Slider ${_sliderEnable ? 'enabled' : 'disabled'}'),
              activeColor: AppTheme.primaryColor,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value ?? true;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              title: Text('Slider ${_sliderEnable ? 'enabled' : 'disabled'}'),
              activeColor: AppTheme.primaryColor,
              value: _sliderEnable,
              onChanged: (value) {
                _sliderEnable = value;
                setState(() {});
              }),

          const AboutListTile(),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://img.freepik.com/foto-gratis/disparo-vertical-palmeras-playa-arena_181624-49124.jpg?w=2000'),
                fit: BoxFit.cover,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
