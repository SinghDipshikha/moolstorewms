import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:moolwmsstore/Security%20Guard/Controllers/securityGuardController.dart';
import 'package:moolwmsstore/Security%20Guard/View/Register/registrationList.dart';
import 'package:moolwmsstore/Security%20Guard/View/Tickets/addTicket.dart';
import 'package:moolwmsstore/Security%20Guard/View/Visitor/addVisitor.dart';
import 'package:moolwmsstore/Security%20Guard/View/widgets/commonButtons.dart';
import 'package:moolwmsstore/utils/globals.dart';

class SecurityGuardDashBoard extends StatefulWidget {
  const SecurityGuardDashBoard({super.key});

  @override
  State<SecurityGuardDashBoard> createState() => _SecurityGuardDashBoardState();
}

class _SecurityGuardDashBoardState extends State<SecurityGuardDashBoard> {
  @override
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //  width: context.isPhone ? MediaQuery.sizeOf(context).width - 100 : 400,
        surfaceTintColor: const Color.fromARGB(255, 22, 22, 22),
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        child: Column(
          //padding: EdgeInsets.zero,
          children: [
            GetBuilder<SecurityGuardController>(builder: (ownerController) {
              return Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme:
                      const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                    curve: Curves.bounceOut,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide.none)),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/100x100"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Color(0x195A57FF),
                              ),
                            ),
                          ),
                        ),
                        const Gap(12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // Text(
                                //   '${ownerController.user.first_name} ${ownerController.user.last_name ?? ""}',
                                //   style: const TextStyle(
                                //     color: Colors.white,
                                //     fontSize: 20,
                                //     fontFamily: 'SF Pro Text',
                                //     fontWeight: FontWeight.w500,
                                //     // height: 0,
                                //     // letterSpacing: -0.80,
                                //   ),
                                // ),
                                const Gap(12),
                                //  const Spacer(),
                                Image.asset(
                                  "assets/icons/candle.png",
                                  height: 22,
                                )
                              ],
                            ),
                            // Text(
                            //   ownerController.user.email ?? "",
                            //   style: const TextStyle(
                            //     color: Color(0xFFACACAC),
                            //     fontSize: 14,
                            //     fontFamily: 'SF Pro Text',
                            //     fontWeight: FontWeight.w300,
                            //     // height: 0,
                            //     // letterSpacing: -0.56,
                            //   ),
                            // ),
                            const Text(
                              'Security Guard',
                              style: TextStyle(
                                color: Color(0xFFFF5789),
                                fontSize: 16,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                // height: 0,
                                // letterSpacing: -0.64,
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              );
            }),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: Image.asset(
                    "assets/icons/grid-3.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Dashboard',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {},
                ),
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  shape: Border.all(
                    color: const Color.fromARGB(255, 22, 22, 22),
                  ),
                  leading: Image.asset(
                    "assets/images/registerVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Regiter ",
                      onTap: () {},
                    ),
                    CurvedLineConatainer(
                      title: "Register List",
                      isShowextendedLine: false,
                      onTap: () {
                        // WarehouseList
                      },
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
                  ],
                ),
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  shape: Border.all(
                    color: const Color.fromARGB(255, 22, 22, 22),
                  ),
                  leading: Image.asset(
                    "assets/images/ticketVector.png",
                    height: 28,
                  ),
                  title: const Text(
                    'Tickets',
                    style: TextStyle(
                      color: Color(0xFFACACAC),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                  children: [
                    CurvedLineConatainer(
                      title: "Add Ticket",
                      onTap: () {},
                    ),
                    CurvedLineConatainer(
                      title: "Ticket List",
                      isShowextendedLine: false,
                      onTap: () {},
                    ),
                    // CurvedLineConatainer(title: "dcdc"),
                    // CurvedLineConatainer(
                    //   title: "dcdc",
                    //   isShowextendedLine: false,
                    //     ),
                  ],
                ),
              ],
            )),
            GetBuilder<SecurityGuardController>(
                builder: (securityGuardController) {
              if (securityGuardController.user.person_type != null) {
                if (securityGuardController.user.person_type!.isNotEmpty) {
                  return DropdownButtonFormField2<String>(
                    //  isExpanded: true,

                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 12),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // Add more decoration..
                    ),
                    hint: const Text('Switch Role',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.64,
                        )),
                    items:
                        securityGuardController.user.person_type!.map((item) {
                      return DropdownMenuItem<String>(
                        value: item["person_type"].toString(),
                        child: Text(
                          item["person_type"].toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.64,
                          ),
                        ),
                      );
                    }).toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Switch Role';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (value != null) {
                        securityGuardController.switchRole(value);
                      }
                      // Logger().i(value);
                      //Do something when selected item is changed.
                    },
                    onSaved: (value) {
                      // selectedValue = value.toString();
                    },
                    buttonStyleData: const ButtonStyleData(
                      //decoration: BoxDecoration(color: Colors.white),
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ).paddingSymmetric(horizontal: 12, vertical: 12);
                }
              }
              return Container();
            }),
            InkWell(
              onTap: () {
                // Get.find<OwnerController>().ownerLogout();
              },
              child: Container(
                height: 60,
                decoration: ShapeDecoration(
                  color: const Color(0xFF383838),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/export.png",
                      height: 28,
                    ).paddingSymmetric(horizontal: 12),
                    const Text(
                      'Logout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.64,
                      ),
                    )
                  ],
                ),
              ).paddingSymmetric(
                horizontal: 12,
              ),
            ),
            const Gap(60),
          ],
        ),
      ),

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Security Guard Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        // ),
        actions: const [
          // Container(
          //   width: 50,
          //   height: 50,
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: AssetImage("assets/images/profile_photo.png"),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ).paddingOnly(right: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  height: 30,
                  decoration: ShapeDecoration(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white.withOpacity(0.30000001192092896),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 4,
                        offset: Offset(3, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const Gap(20),
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                      const Gap(20),
                      Text(
                        _selectedDate == null
                            ? 'All Time'
                            : _selectedDate.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.56,
                        ),
                      ),
                      const Gap(20),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  height: 30,
                  decoration: ShapeDecoration(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: Colors.white.withOpacity(0.30000001192092896),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 4,
                        offset: Offset(3, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      const Gap(20),
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                      const Gap(20),
                      Text(
                        _selectedDate == null
                            ? 'All Time'
                            : _selectedDate.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFFACACAC),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.56,
                        ),
                      ),
                      const Gap(20),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFACACAC),
                        size: 20,
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 85,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, -0.00),
                    end: Alignment(1, 0),
                    colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Ticket',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 85,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, -0.00),
                    end: Alignment(1, 0),
                    colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Customer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(const RegistrationListScreen(),
                      id: securityGuardNavigation);
                },
                child: Container(
                  width: 100,
                  height: 85,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, -0.00),
                      end: Alignment(1, 0),
                      colors: [Color(0xFF5A57FF), Color(0xFF7C79FF)],
                    ),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: -0.64,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(
              children: [
                Container(
                  width: 180,
                  height: 100,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(-1.00, -0.00),
                      end: Alignment(1, 0),
                      colors: [
                        Color.fromARGB(255, 120, 118, 232),
                        Color(0xFF7C79FF)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const AddTicketScreen(),
                              id: securityGuardNavigation);
                        },
                        child: Container(
                          width: 100,
                          height: 66,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/ticket_image.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        'Create Ticket',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.64,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Container(
            //   width: 150,
            //   height: 78,
            //   decoration: ShapeDecoration(
            //     image: const DecorationImage(
            //       image: AssetImage("assets/images/addVisitorBySG.png"),
            //       fit: BoxFit.fill,
            //     ),
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(width: 1, color: Color(0xFF38D6E0)),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: const Text(
            //     'Add Visitor',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontFamily: 'SF Pro Text',
            //       fontWeight: FontWeight.w500,
            //       height: 0,
            //       letterSpacing: -0.64,
            //     ),
            //   ),
            // ),

            Container(
              width: 180,
              height: 100,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-1.00, -0.00),
                  end: Alignment(1, 0),
                  colors: [
                    Color.fromARGB(255, 120, 118, 232),
                    Color(0xFF7C79FF)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x3FFAF9FF)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(const AddVisitor(), id: securityGuardNavigation);
                    },
                    child: Container(
                      width: 66,
                      height: 66,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/visitorNew.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    'Add Visitor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          const Gap(5),
          InkWell(
            onTap: () {
              _showPopup(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 134,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: const Alignment(1.00, 0.00),
                    end: const Alignment(-1, 0),
                    colors: [
                      Colors.white.withOpacity(0.10000000149011612),
                      Colors.white.withOpacity(0.10000000149011612)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Material',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.72,
                      ),
                    ).paddingOnly(top: 20, left: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.72,
                              ),
                            ),
                            Text(
                              'Check In',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.56,
                              ),
                            ),
                          ],
                        ),
                        const Column(
                          children: [
                            Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.72,
                              ),
                            ),
                            Text(
                              'Check Out',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 14,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.56,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 92,
                          height: 90,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/material.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(1.00, 0.00),
                  end: const Alignment(-1, 0),
                  colors: [
                    Colors.white.withOpacity(0.10000000149011612),
                    Colors.white.withOpacity(0.10000000149011612)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Vehicle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Vehicle In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Vehicle Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 120,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/vehicle.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(1.00, 0.00),
                  end: const Alignment(-1, 0),
                  colors: [
                    Colors.white.withOpacity(0.10000000149011612),
                    Colors.white.withOpacity(0.10000000149011612)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Person In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Person Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 92,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/person.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 134,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(1.00, 0.00),
                  end: const Alignment(-1, 0),
                  colors: [
                    Colors.white.withOpacity(0.10000000149011612),
                    Colors.white.withOpacity(0.10000000149011612)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Visitor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.72,
                    ),
                  ).paddingOnly(top: 20, left: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        children: [
                          Text(
                            '12',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Visitor In',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            '10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.72,
                            ),
                          ),
                          Text(
                            'Visitor Out',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.56,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 92,
                        height: 90,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/visitor.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(20)
        ]),
      ),
      // body: SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         const Gap(50),
      // InkWell(
      //   onTap: () {
      //     _selectDate(context);
      //   },
      //   child: Container(
      //     height: 60,
      //     //  width: dou,
      //     decoration: const ShapeDecoration(
      //       color: Colors.white,
      //       shape: RoundedRectangleBorder(),
      //       shadows: [
      //         BoxShadow(
      //           color: Color(0x0C000000),
      //           blurRadius: 4,
      //           offset: Offset(3, 4),
      //           spreadRadius: 0,
      //         )
      //       ],
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      // const Icon(
      //   Icons.calendar_month,
      //   color: Colors.black,
      //   size: 40,
      // ),
      //         Text(
      //           _selectedDate == null
      //               ? 'No Date Selected'
      //               : _selectedDate.toString(),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      //         const Gap(20),
      //         Container(
      //           // width: double.infinity,
      //           height: 163,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Colors.black, Color(0xFF383838)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Expanded(
      //                 flex: 1,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Gap(20),
      //                     const Padding(
      //                       padding: EdgeInsets.all(10.0),
      //                       child: Text(
      //                         'Register',
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 24,
      //                           fontFamily: 'Nunito',
      //                           fontWeight: FontWeight.w700,
      //                           height: 0,
      //                         ),
      //                       ),
      //                     ),
      //                     Container(
      //                       width: 110,
      //                       height: 94,
      // decoration: const BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   image: DecorationImage(
      //     image: AssetImage(
      //         "assets/images/register_engineer.png"),
      //     fit: BoxFit.contain,
      //   ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Gap(50),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check In',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(10),
      //                         Text(
      //                           '12',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   Gap(20),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check Out',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '10',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         const Gap(20),
      //         Container(
      //           width: double.infinity,
      //           height: 163,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Colors.black, Color(0xFF383838)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceAround,
      //             children: [
      //               Expanded(
      //                 flex: 1,
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Gap(20),
      //                     const Padding(
      //                       padding: EdgeInsets.all(10.0),
      //                       child: Text(
      //                         'Tickets',
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontSize: 24,
      //                           fontFamily: 'Nunito',
      //                           fontWeight: FontWeight.w700,
      //                           height: 0,
      //                         ),
      //                       ),
      //                     ),
      //                     Container(
      //                       width: 150,
      //                       height: 94,
      //                       decoration: const BoxDecoration(
      //                         shape: BoxShape.rectangle,
      //                         image: DecorationImage(
      //                           image: AssetImage(
      //                               "assets/images/ticket_image.png"),
      //                           fit: BoxFit.fill,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Gap(50),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check In',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '12',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                   Gap(10),
      //                   Padding(
      //                     padding: EdgeInsets.all(10.0),
      //                     child: Row(
      //                       children: [
      //                         Text(
      //                           'Check Out',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                         Gap(20),
      //                         Text(
      //                           '10',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 16,
      //                             fontFamily: 'Nunito',
      //                             fontWeight: FontWeight.w500,
      //                             height: 0,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         const Gap(20),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Expanded(
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 163,
      //                 decoration: ShapeDecoration(
      //                   gradient: const LinearGradient(
      //                     colors: [Color(0xFF151515), Color(0xFF303030)],
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(5)),
      //                 ),
      //               ),
      //             ),
      //             const Gap(10),
      //             Expanded(
      //               child: Container(
      //                 width: double.infinity,
      //                 height: 163,
      //                 decoration: ShapeDecoration(
      //                   gradient: const LinearGradient(
      //                     colors: [Color(0xFF151515), Color(0xFF303030)],
      //                   ),
      //                   shape: RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(5)),
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //         const Gap(20),
      //         Container(
      //           width: double.infinity,
      //           height: 63,
      //           decoration: ShapeDecoration(
      //             gradient: const LinearGradient(
      //               colors: [Color(0xFF151515), Color(0xFF303030)],
      //             ),
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(5)),
      //           ),
      //         ),

      //         Container(
      //           height: 50,
      //         )
      //       ],
      //     ),
      //   ),
      // ).paddingSymmetric(
      //   horizontal: 25,
      // ),
    );
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              const Gap(20),
              CommonSubmitButtonForNewTheme(
                buttonColors: const Color(0xFF5A57FF),
                title: 'Verify Ticket',
              ),
              const Gap(10),
              CommonSubmitButtonForNewTheme(
                buttonColors: const Color(0xFF5A57FF),
                title: 'Create Ticket',
              ),
              const Gap(20),
              Container(
                width: 100,
                height: 160,
                decoration: ShapeDecoration(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/dashboardPopup.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: const <Widget>[],
      );
    },
  );
}


class CurvedLineConatainer extends StatelessWidget {
  String title;
  bool isShowextendedLine;
  void Function()? onTap;

  CurvedLineConatainer(
      {super.key,
      required this.title,
      this.isShowextendedLine = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Colors.amber,
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(12)),
                  color: isShowextendedLine ? Colors.grey : Colors.transparent,
                ),
                height: 60,
                width: 1,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(12)),
                    color: Colors.transparent,
                    border: Border(
                        // right: BorderSide(width: 1, color: Colors.transparent),
                        //  top: BorderSide(width: 1, color: Colors.transparent),
                        bottom: BorderSide(width: 1, color: Colors.grey),
                        left: BorderSide(width: 1, color: Colors.grey))),
                height: 22,
                width: 22,
              ),
            ],
          ),
          const Gap(12),
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFA7A7A7),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.64,
                    ),
                  ),
                ],
              ).paddingOnly(left: 8),
            ),
          ),
          const Gap(12),
        ],
      ),
    );
  }
}