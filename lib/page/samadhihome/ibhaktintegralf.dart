import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/minspiritdenj.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class IbhaktinTegRalf extends StatefulWidget {
  const IbhaktinTegRalf({super.key});

  @override
  State<IbhaktinTegRalf> createState() => _IbhaktinTegRalf();
}

class _IbhaktinTegRalf extends State<IbhaktinTegRalf> {
  final TextEditingController _kriNDhAa = TextEditingController();
  String _floVIraTiw = "assets/images/iuwSNCUBQ1.png";

  String? _zeNVipAs;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> evokeTranquilFrameExtract() async {
    if (await Permission.photos.request().isGranted) {
      FilePickerResult? serenityEssence = await FilePicker.platform.pickFiles(
        type: FileType.video,
      );

      if (serenityEssence == null) return;

      String? mellowPathway = serenityEssence.files.single.path;
      if (mellowPathway == null) return;

      final reposeHub = await getTemporaryDirectory();
      final String calmSnapshotRoute =
          '${reposeHub.path}/${DateTime.now().millisecondsSinceEpoch}.png';

      final String? soothingFrameAsset = await VideoThumbnail.thumbnailFile(
        video: mellowPathway,
        thumbnailPath: calmSnapshotRoute,
        imageFormat: ImageFormat.PNG,
        maxWidth: 400,
        quality: 80,
      );

      _zeNVipAs = soothingFrameAsset;

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ziuxNCIUQB.png"),
          ),
        ),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    "assets/images/cjNVUISAB.png",
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () async {
                                if(_kriNDhAa.text==""||_zeNVipAs==null){
                                  return;
                                }

                               await sereneFluxInvoker();

                               SmartDialog.showToast("28e263a26df3c10831a61f0461673aa75e72729923b31a43452750a3439f61b275d21495d67ab9cc4f3bf11b0884a5273df3711742aeae423a83822b9851951ba1c7846b4037a75ea8756bdfefef1238dabc84549c1ad86ca214fa191e0eccb5".sovoTIonUl());

                                Get.back();
                              },
                              child: PhysicalModel(
                                color: Colors.transparent,
                                elevation: 0,
                                borderRadius: BorderRadius.circular(45),
                                child: Container(
                                  width: 121,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF1E7EE6),
                                    ),
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromRGBO(30, 126, 230, 1),
                                            Color.fromRGBO(184, 218, 255, 1),
                                          ],
                                          begin: Alignment(-1, 0),
                                          end: Alignment(1, 0),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/iuiwqXBSFCUYQW.png",
                                            width: 23,
                                            height: 20,
                                          ),
                                          SizedBox(width: 18),
                                          Text(
                                            "Send",
                                            style: TextStyle(
                                              fontFamily: 'NotoSans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                255,
                                                255,
                                                255,
                                                1,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 20,
                          ),
                          child: SingleChildScrollView(
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mood:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),
                                Builder(
                                  builder: (context) {
                                    final banMUla =
                                        FFAppState.instance.jteNIsiOn;
                                    return GridView.count(
                                      padding: EdgeInsets.all(0),
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 12,
                                      crossAxisSpacing: 6,
                                      childAspectRatio: 100 / 124,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: banMUla
                                          .map((pazir) => _hapanazix(pazir))
                                          .toList(),
                                    );
                                  },
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 24),
                                ),
                                Text(
                                  "Video:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),

                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    evokeTranquilFrameExtract();
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Color.fromRGBO(
                                            30,
                                            126,
                                            230,
                                            1,
                                          ),
                                        ),
                                        if (_zeNVipAs != null)
                                          Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(_zeNVipAs!),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 24),
                                ),
                                Text(
                                  "Content:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 16),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 99,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    maxLines: 3,
                                    controller: _kriNDhAa,
                                    decoration: InputDecoration(
                                      hintText: "Want to say",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(5, 3, 19, .4),
                                      ),

                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),

                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 30),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hapanazix(pazir) {
    return Column(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              _floVIraTiw = pazir;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/cnquwiasZXICB.png",
                width: 100,
                height: 100,
              ),
              Image(image: AssetImage(pazir), width: 62, height: 62),
            ],
          ),
        ),

        DecoratedBox(decoration: BoxDecoration(), child: Container(height: 8)),
        PhysicalModel(
          color: Colors.transparent,
          elevation: 0,
          borderRadius: BorderRadius.circular(45),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: _floVIraTiw == pazir
                    ? Color(0xFF1E7EE6)
                    : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(45),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: _floVIraTiw == pazir
                        ? [
                            Color.fromRGBO(30, 126, 230, 1),
                            Color.fromRGBO(184, 218, 255, 1),
                          ]
                        : [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(255, 255, 255, 1),
                          ],
                    begin: Alignment(-1, 0),
                    end: Alignment(1, 0),
                  ),
                  borderRadius: BorderRadius.circular(45),
                ),
                alignment: AlignmentDirectional(0, 0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
