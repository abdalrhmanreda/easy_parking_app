// Stack buildHomeBodyScreen(BuildContext context, HashSet<Marker> markers,
//     TextEditingController searchController) {
//   return Stack(
//     children: [
//       GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: LatLng(LocationHelper.latitude, LocationHelper.latitude),
//           zoom: 22.4,
//         ),
//         onMapCreated: (GoogleMapController googleMapController) async {
//           String style = await DefaultAssetBundle.of(context)
//               .loadString(Assets.mapsStyleMapStyle);
//           googleMapController.setMapStyle(style);
//         },
//         markers: markers,
//         zoomControlsEnabled: true,
//       ),
//       Align(
//         alignment: Alignment.topCenter,
//         child: InkWell(
//           onTap: () {
//             bulidSearchBottomSheet(context, searchController);
//           },
//           child: Container(
//             margin: EdgeInsets.only(
//               top: MediaQuery.of(context).size.height / 50,
//             ),
//             width: MediaQuery.of(context).size.width / 1.2,
//             decoration: BoxDecoration(
//               color: Theme.of(context).scaffoldBackgroundColor,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: CustomTextFormField(
//               isPassword: false,
//               label: S.of(context).search,
//               type: TextInputType.text,
//               isEnable: false,
//               border: InputBorder.none,
//               prefixIcon: IconlyBroken.search,
//               suffixIcon: IconlyBroken.voice,
//               suffixPressed: () {},
//               edgeInsetsGeometry: const EdgeInsets.symmetric(vertical: 7),
//             ),
//           ),
//         ),
//       ),
//     ],
//   );
// }
