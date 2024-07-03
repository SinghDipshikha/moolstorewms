//import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/Model/SecurityGuard/person.dart';
import 'package:moolwmsstore/Security%20Guard/View/Person/viewInfo.dart';
import 'package:moolwmsstore/utils/globals.dart';

//@RoutePage()
class PersonsListScreen extends StatefulWidget {
  const PersonsListScreen({super.key});

  @override
  State<PersonsListScreen> createState() => _PersonsListScreenState();
}

class _PersonsListScreenState extends State<PersonsListScreen> {
  @override
  final List tags = [
    {"title": "Name", "flex": 1},
    {"title": "Mobile", "flex": 2},
    {"title": "Date & Time", "flex": 2},
    {
      "title": "Status",
      "flex": 1,
    },
  ];
  final List dataList = [
    {"title": "Johnson Charles", "flex": 1},
    {"title": "123456789", "flex": 2},
    {"title": "25-06-2024 10:35 AM", "flex": 2},
    {"title": "icon", "flex": 1},
    {"title": "icon2", "flex": 1},
  ];

  TextStyle subHeaderStyle = const TextStyle(
    color: Color(0xFF5A57FF),
    fontSize: 12,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
  );
  TextStyle headerStyle = const TextStyle(
    color: Color(0xFF353535),
    fontSize: 12,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
  );

  DateTime start = DateTime.now();
  DateTime end = DateTime.now().subtract(const Duration(days: 1));
  static const _pageSize = 20;
  final PagingController<int, Person> _pagingController =
      PagingController(firstPageKey: 1);

  Future<void> _fetchPage(int pageKey) async {
    try {
      await getAllPerson(pageKey).then((v) {
        if (v != null) {
          final newItems = v;

          final isLastPage = newItems.length < _pageSize;
          if (isLastPage) {
            _pagingController.appendLastPage(newItems);
          } else {
            final nextPageKey = pageKey + newItems.length;
            _pagingController.appendPage(newItems, nextPageKey);
          }
        }
      });
    } catch (error) {
      _pagingController.error = error;
    }
  }

  Future<List<Person>?> getAllPerson(int pageKey) async {
    var res = await Get.find<SecurityGuardController>()
        .apiClient
        .postData("person/list?recordsPerPage=$_pageSize&next=$pageKey", {
      "person_name": "",
      "mobile_number": "",
      "start_date": "",
      "end_date": "",
      "warehouse_id": Get.find<SecurityGuardController>()
          .currentlySelectedWarehouse!
          .warehouse_id
    });
    if (res.data["message"] == "Data Retrieved Successfully!") {
      return (res.data["result"] as List)
          .map((e) => Person.fromJson(e))
          .toList();
    } else {
      return null;
    }
  }

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      Get.find<SecurityGuardController>()
          .secGaurdRepo
          .getAllPerson(recordsPerPage: 20, page: pageKey)
          .then((v) {
        if (v != pageKey) {
          if (v!.length < 2) {
            _pagingController.appendLastPage(v);
          } else {
            final nextPageKey = pageKey + 1;
            _pagingController.appendPage(v, nextPageKey);
          }
        }
      });
    });
    super.initState();
  }

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Persons List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 169,
                    height: 39,
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Sort By',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Icon(
                          Icons.filter,
                          color: Color(0xFFACACAC),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 169,
                    height: 39,
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x195A57FF)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Color(0xFFACACAC),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Color(0xFFACACAC),
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                children: List.generate(tags.length, (index) {
                  if (tags[index]["title"] == "icon") {
                    return Expanded(
                      flex: tags[index]["flex"],
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Expanded(
                        flex: tags[index]["flex"],
                        child: Text(
                          tags[index]["title"],
                          style: const TextStyle(
                            color: Color(0xFF5A57FF),
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  );
                }),
              ),
              Expanded(
                child: PagedListView<int, Person>(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Person>(
                      itemBuilder: (context, entry, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 382,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFAF9FF),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0x195A57FF)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Row(
                            children: List.generate(dataList.length, (index) {
                              if (dataList[index]["title"] ==
                                  "Johnson Charles") {
                                return Expanded(
                                    flex: dataList[index]["flex"],
                                    child: Text(
                                      entry.person_name ?? "",
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.48,
                                      ),
                                    ));
                              }
                              if (dataList[index]["title"] == "123456789") {
                                return Expanded(
                                    flex: dataList[index]["flex"],
                                    child: Text(
                                      entry.person_phone ?? "",
                                      style: const TextStyle(
                                        color: Color(0xFF353535),
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                        letterSpacing: -0.48,
                                      ),
                                    ));
                              }
                              if (dataList[index]["title"] ==
                                  "25-06-2024 10:35 AM") {
                                return Expanded(
                                    flex: dataList[index]["flex"],
                                    child: Text(
                                      entry.created_at.toString() ??
                                          "${DateTime.now()}",
                                      style: const TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 10,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.40,
                                      ),
                                    ));
                              }
                              if (dataList[index]["title"] == "icon" &&
                                  entry.status == "IN") {
                                return Expanded(
                                  flex: dataList[index]["flex"],
                                  child: Container(
                                    // width: 20,
                                    // height: 30,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFAF9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/check_in.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              if (dataList[index]["title"] == "icon" &&
                                  entry.status == "OUT") {
                                return Expanded(
                                  flex: dataList[index]["flex"],
                                  child: Container(
                                    // width: 20,
                                    // height: 30,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFFAF9FF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/check_out.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              if (dataList[index]["title"] == "icon2") {
                                return Expanded(
                                  flex: dataList[index]["flex"],
                                  child: InkWell(
                                    onTap: () {
                                      print(entry);
                                      Get.to(
                                          PersonInfoScreen(
                                            personDetails: entry,
                                          ),
                                          id: securityGuardNavigation);
                                    },
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFFAF9FF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/icons/eyeNew.png"),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }

                              return Expanded(
                                flex: tags[index]["flex"],
                                child: Text(
                                  tags[index]["title"],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ]),
      ),
    );
  }
}
