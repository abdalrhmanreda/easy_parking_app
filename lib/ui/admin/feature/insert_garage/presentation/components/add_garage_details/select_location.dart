import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";
  @override
  Widget build(BuildContext context) {
    return CSCPicker(
      showStates: true,

      showCities: true,

      flagState: CountryFlag.ENABLE,

      dropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1)),

      disabledDropdownDecoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.grey.shade300, width: 1)),

      countrySearchPlaceholder: "Country",
      stateSearchPlaceholder: "State",
      citySearchPlaceholder: "City",

      countryDropdownLabel: "* Country",
      stateDropdownLabel: "* State",
      cityDropdownLabel: "* City",

      defaultCountry: CscCountry.Egypt,


      selectedItemStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),

      dropdownHeadingStyle: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),

      dropdownItemStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),

      dropdownDialogRadius: 10.0,

      searchBarRadius: 10.0,

      onCountryChanged: (value) {
        onStateChanged:
        (value) {
          if (value != null) {
            setState(() {
              ///store value in state variable
              countryValue = value;
            });
          }
        };
      },

      ///triggers once state selected in dropdown
      onStateChanged: (value) {
        onStateChanged:
        (value) {
          if (value != null) {
            setState(() {
              ///store value in state variable
              stateValue = value;
            });
          }
        };
      },

      ///triggers once city selected in dropdown
      onCityChanged: (value) {
        onStateChanged:
        (value) {
          if (value != null) {
            setState(() {
              ///store value in state variable
              cityValue = value;
            });
          }
        };
      },
    );
  }
}
