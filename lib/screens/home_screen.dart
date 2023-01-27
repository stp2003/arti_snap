import 'package:arti_snap/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // variables ->
  var sizes = ["Small", "Medium", "Large"];
  var values = ["256x256", "512x512", "1024x1024"];
  String? dropValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Foto A.I',
          style: TextStyle(
            fontFamily: 'poppins_bold',
            color: Colors.white,
          ),
        ),
      ),

      //?? body ->
      body: Column(
        children: [
          //?? for text form field ->
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'eg: Astronaut in the ocean..',
                            hintStyle: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 0.6,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),

                    //?? for a drop down button for images size ->
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          icon: const Icon(
                            Icons.expand_more_sharp,
                            color: btnColor,
                          ),
                          value: dropValue,
                          hint: const Text(
                            'Select size',
                            style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 0.6,
                            ),
                          ),
                          items: List.generate(
                            sizes.length,
                            (index) => DropdownMenuItem(
                              value: values[index],
                              child: Text(
                                sizes[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),

                //?? button ->
                SizedBox(
                  width: 300,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: btnColor,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'Generate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.purpleAccent,
            ),
          ),
        ],
      ),
    );
  }
}
