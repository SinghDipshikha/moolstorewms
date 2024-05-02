// import 'package:flutter/material.dart';
// import 'package:flutter_3d_controller/flutter_3d_controller.dart';

// class FloorLayoutDesiging extends StatelessWidget {
//   const FloorLayoutDesiging({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Flutter3DController controller = Flutter3DController();
//     return Scaffold(
//         appBar: AppBar(),
//         body: Container(
//           color: Colors.grey,
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: SingleChildScrollView(
//             child: Wrap(
//               runSpacing: 10,
//               spacing: 10,
//               children: List.generate(
//                   10,
//                   (index) => SizedBox(
//                         height: 200,
//                         width: 100,
//                         child: Flutter3DViewer(
//                           //If you don't pass progressBarColor the color of defaultLoadingProgressBar will be grey.
//                           //You can set your custom color or use [Colors.transparent] for hiding loadingProgressBar.
//                           progressBarColor: Colors.blue,
//                           controller: controller,
//                           src: 'assets/3d/pallet.glb',

//                           //src: 'assets/sheen_chair.glb',
//                         ),
//                       )),
//             ),
//           ),
//         ));
//   }
// }

// class WarehouseLayout extends StatefulWidget {
//   const WarehouseLayout({super.key});

//   @override
//   _WarehouseLayoutState createState() => _WarehouseLayoutState();
// }

// class _WarehouseLayoutState extends State<WarehouseLayout> {
//   final double rectangleWidth = 50.0;
//   final double rectangleHeight = 30.0;
//   List<Offset> rectanglePositions = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Warehouse Layout'),
//       ),
//       body: Stack(
//         children: [
//           // Background for the warehouse floor
//           Container(
//             color: Colors.grey[200],
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           // Draggable rectangles
//           for (final position in rectanglePositions)
//             Draggable(
//               feedback: Container(
//                 width: rectangleWidth,
//                 height: rectangleHeight,
//                 color: Colors.blue.withOpacity(0.5),
//               ),
//               onDragStarted: () => setState(() => dragging = true),
//               onDraggableCanceled: (Velocity velocity, Offset offset) =>
//                   setState(() {
//                 dragging = false;
//                 _checkForCollisions(offset);
//               }),
//               onDragEnd: (details) => setState(() {
//                 dragging = false;
//                 _checkForCollisions(details.offset);
//               }),
//               // Use data property instead of childData
//               data: position,
//               feedbackOffset: const Offset(0.0, 0.0),
//               child: Container(
//                 width: rectangleWidth,
//                 height: rectangleHeight,
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black),
//                 ),
//               ), // Adjust for feedback position if needed
//             ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () =>
//             setState(() => rectanglePositions.add(const Offset(100.0, 100.0))),
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   bool dragging = false;

//   // Function to check for collisions between rectangles
//   void _checkForCollisions(Offset newPosition) {
//     if (!dragging) return;
//     final newRect = Rect.fromLTWH(
//         newPosition.dx, newPosition.dy, rectangleWidth, rectangleHeight);
//     if (rectanglePositions.any((position) => newRect.overlaps(Rect.fromLTWH(
//         position.dx, position.dy, rectangleWidth, rectangleHeight)))) {
//       // Collision detected, revert position
//       rectanglePositions.removeLast();
//     } else {
//       rectanglePositions.removeLast();
//       rectanglePositions.add(newPosition);
//     }
//   }
// }

// class Pallet {
//   final double width;
//   final double height;
//   Offset position; // Stores the current position (Offset) of the pallet

//   Pallet({required this.width, required this.height, required this.position});
// }

// class ChamberDesign extends StatefulWidget {
//   const ChamberDesign({super.key});

//   @override
//   _ChamberDesignState createState() => _ChamberDesignState();
// }

// class _ChamberDesignState extends State<ChamberDesign> {
//   final double palletWidth = 50.0;
//   final double palletHeight = 30.0;
//   final int gridColumns = 5; // Adjust number of columns for your grid layout
//   final double gridCellSpacing = 10.0; // Adjust spacing between grid cells

//   List<Pallet> draggablePallets = []; // List for draggable pallets
//   List<Pallet> placedPallets = []; // List for placed pallets

//   @override
//   Widget build(BuildContext context) {
//     final chamberFloorSize = MediaQuery.of(context).size;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chamber Design'),
//       ),
//       body: Stack(
//         children: [
//           // Background for the chamber floor
//           Container(
//             color: Colors.grey[200],
//             width: MediaQuery.sizeOf(context).width,
//             height: MediaQuery.sizeOf(context).height,
//           ),
//           // Grid lines (optional)
//           _buildGridLines(chamberFloorSize),
//           // Draggable pallets
//           for (final pallet in draggablePallets)
//             Draggable(
//               feedback: Container(
//                 width: palletWidth,
//                 height: palletHeight,
//                 color: Colors.brown.withOpacity(0.5),
//               ),
//               onDragStarted: () => setState(() => dragging = true),
//               onDraggableCanceled: (Velocity velocity, Offset offset) =>
//                   setState(() {
//                 dragging = false;
//                 _checkForCollisions(offset);
//               }),
//               onDragEnd: (details) => setState(() {
//                 dragging = false;
//                 _checkForCollisions(details.offset);
//               }),
//               data: pallet,
//               feedbackOffset: const Offset(0.0, 0.0),
//               child: Container(
//                 width: palletWidth,
//                 height: palletHeight,
//                 color: Colors.brown, // Adjust color for draggable pallets
//               ),
//             ),
//           // Placed pallets
//           for (final placedPallet in placedPallets)
//             Positioned(
//               left: placedPallet.position.dx,
//               top: placedPallet.position.dy,
//               child: Container(
//                 width: palletWidth,
//                 height: palletHeight,
//                 color: Colors.brown
//                     .withOpacity(1.0), // Adjust color for placed pallets
//               ),
//             ),
//           // Add pallet button (optional)
//           _buildAddPalletButton(),
//         ],
//       ),
//     );
//   }

//   bool dragging = false;

//   Widget _buildGridLines(Size chamberFloorSize) {
//     final cellWidth =
//         (chamberFloorSize.width - (gridColumns - 1) * gridCellSpacing) /
//             gridColumns;
//     final cellHeight = palletHeight; // Adjust cell height if needed

//     return GridView.count(
//       primary: false,
//       physics: const NeverScrollableScrollPhysics(), // Disable grid scrolling
//       childAspectRatio: cellWidth / cellHeight,
//       crossAxisCount: gridColumns,
//       children: List.generate(
//           gridColumns * (chamberFloorSize.height ~/ cellHeight), (index) {
//         final row = index ~/ gridColumns;
//         final col = index % gridColumns;
//         final left = col * (cellWidth + gridCellSpacing);
//         final top = row * (cellHeight + gridCellSpacing);
//         return Container(
//           color: Colors.transparent, // Grid lines (adjust color for visibility)
//           width: cellWidth,
//           height: cellHeight,
//         );
//       }),
//     );
//   }

//   Widget _buildAddPalletButton() {
//     // Implement button logic to add new pallets to draggablePallets list
//     return FloatingActionButton(
//       onPressed: () => setState(() => draggablePallets.add(Pallet(
//           width: palletWidth,
//           height: palletHeight,
//           position: const Offset(100.0, 100.0)))),
//       child: const Icon(Icons.add),
//     );
//   }

//   void _checkForCollisions(Offset newPosition) {
//     if (!dragging) return;
//     // final newRect = Rect.fromLTWH(newPosition.dx, newPosition.dy, pallet.width, pallet.height);

//     // // Check for collisions with existing placed pallets
//     // if (placedPallets.any((placedPallet) => newRect.overlaps(Rect.fromLTWH(
//     //       placedPallet.position.dx, placedPallet.position.dy, placedPallet.width, placedPallet.height)))) {
//     //   // Collision detected, prevent placement (optional: visual feedback)
//     //   return;
//     // }

//     // // Check if dropped within a valid grid cell (calculate cell based on newPosition)
//     // final gridCell = calculateGridCell(newPosition);
//     // if (gridCell != null && !placedPallets.any((placedPallet) => placedPallet.position == gridCell)) {
//     //   // Valid drop position within empty grid cell
//     //   final newPallet = pallet.copyWith(position: gridCell);
//     //   draggablePallets.remove(pallet);
//     //   placedPallets.add(newPallet);
//     // } else {
//     //   // Not a valid drop position (optional: visual feedback)
//     // }
//   }
// }
