import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygateapp/api/city_modal.dart';
import 'package:mygateapp/theam/app_string.dart';
import 'package:mygateapp/widget/custom_text.dart';
import '../../controller/mygate_controller.dart';
import '../../navigation_utils/navigation.dart';
import '../../navigation_utils/routes.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final MyGateController myGateController = Get.put(MyGateController());
  final TextEditingController searchCityController = TextEditingController();
  List<CityModal>? recipes;
  List<CityModal>? search_recipes;

  bool _searchBoolean = false;

  final String _searchText = "";

  @override
  void initState() {
    super.initState();
  }

  List<String>? s = [];

  @override
  Widget build(BuildContext context) {
    // s = myGateController.cityList.value.city;
    // print("ppppp${s}"); ketli var lagse
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: !_searchBoolean
              ? const CustomText(text: AppString.selectCity)
              : _searchTextField(),
          actions: !_searchBoolean
              ? [
                  IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          _searchBoolean = true;
                        });
                      })
                ]
              : [
                  IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          _searchBoolean = false;
                        });
                      })
                ],
        ),
        body: Column(
          children: [
            Obx(
              () => Expanded(
                child: ListView.separated(
                  itemCount: searchCityController.text.isNotEmpty
                      ? myGateController.searchCityList.length
                      : (myGateController.cityList.value.city?.length ?? 0),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            child: Text(searchCityController.text.isNotEmpty
                                ? myGateController.searchCityList[index]
                                    .toString()
                                : "${myGateController.cityList.value.city?[index]}"),
                            onTap: () {
                              Navigation.pushNamed(Routes.secondPage, arg: {
                                "apidata": searchCityController.text.isNotEmpty
                                    ? myGateController.searchCityList[index]
                                         : "${myGateController.cityList.value.city?[index]}"
                                // myGateController.cityList.value.city?[index]
                              });
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: 1,
                      color: Colors.grey.shade100,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchTextField() {
    return TextFormField(
      onChanged: (val) {
        myGateController.searchCityList = myGateController.cityModalList
            .where(
                (element) => element.toLowerCase().contains(val.toLowerCase()))
            .toList();
        setState(() {});
      },
      controller: searchCityController,
      autofocus: true,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      decoration: const InputDecoration(
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        hintText: 'Search', //Text that is displayed when nothing is entered.
        hintStyle: TextStyle(
          color: Colors.white60,
          fontSize: 20,
        ),
      ),
    );
  }
}
