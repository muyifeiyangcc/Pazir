import 'dart:convert';
import 'package:pazir/backend/atiliberationmes.dart';
import 'package:pazir/backend/atiomentnexchat.dart';
import 'package:pazir/backend/drasionnverp.dart';
import 'package:pazir/backend/minspiritdenj.dart';
import 'package:pazir/backend/prakritiuser.dart';
import 'package:pazir/backend/shialchemyftm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState {
  FFAppState._internal();
  static final FFAppState instance = FFAppState._internal();

  static const String _acredatUser = 'rooting_users';

  List<RootingUsers> _alignrelUsers = [];

  // 文章存储
  static const String _briuealimArt = 'rooting_articles';
  List<RootingArticles> _uilbreathiArt = [];

  // 聊天表存储 key
  static const String _rootINGChat = 'rooting_chats';

  // 聊天表数据
  List<CinapRimideCh> _ireZENChats = [];

  // 聊天详细消息表
  List<DcenTErleMes> _dcenTErleMesList = [];

  late SharedPreferences prefs;
  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    final rawList = prefs.getStringList(_acredatUser);

    if (rawList == null) {
      _alignrelUsers = _stabilizInitUsers();

      await _saveToPrefs();
    } else {
      _alignrelUsers = rawList
          .map((e) => RootingUsers.fromJson(jsonDecode(e)))
          .toList();
    }

    // 初始化文章
    final rawArticleList = prefs.getStringList(_briuealimArt);
    if (rawArticleList == null) {
      _uilbreathiArt = _stabilizInitArticles();
      await _ergspinalySaveArt();
    } else {
      _uilbreathiArt = rawArticleList
          .map((e) => RootingArticles.fromJson(jsonDecode(e)))
          .toList();
    }

    //评论
    final ligalCHemyCom = prefs.getStringList('rooting_comments');
    if (ligalCHemyCom != null) {
      _ligFLowhtCom = ligalCHemyCom
          .map((e) => PraniBodieDc.fromJson(jsonDecode(e)))
          .toList();
    }

    // 初始化聊天表
    final suPOrenCh = prefs.getStringList(_rootINGChat);

    if (suPOrenCh == null) {
      _ireZENChats = _keucREampInitCh();
      await _ragGTnteSaveCh();
    } else {
      _ireZENChats = suPOrenCh
          .map((e) => CinapRimideCh.fromJson(jsonDecode(e)))
          .toList();
    }

    final iraLFweaSeMes = prefs.getStringList('rooting_dcenTErleMes');

    if (iraLFweaSeMes == null) {
      _dcenTErleMesList = _innerSTildfInitMes();
      await _wsiDEorkSaveMes();
    } else {
      _dcenTErleMesList = iraLFweaSeMes
          .map((e) => DcenTErleMes.fromJson(jsonDecode(e)))
          .toList();
    }

    _safeInit(() {
      _flexionLogUid = prefs.getInt('ff_flexionLogUid') ?? _flexionLogUid;
    });
  }

  int _flexionLogUid = -1;
  int get flexionLogUid => _flexionLogUid;
  set flexionLogUid(int value) {
    _flexionLogUid = value;
    prefs.setInt('ff_flexionLogUid', value);
  }

  int shamBHavInd = 0;

  /// 获取所有用户
  List<RootingUsers> get zazImeAllUsers => _alignrelUsers;

  /// 添加用户
  Future<void> stWAaBilAdUs(RootingUsers aEIonUs) async {
    _alignrelUsers.add(aEIonUs);
    await _saveToPrefs();
  }

  Future<void> _saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _acredatUser,
      _alignrelUsers.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  List<RootingUsers> _stabilizInitUsers() {
    return [
      RootingUsers(
        sukhabUid: 1,
        vivekaUName: "69ef1d430e3c16cd5800103b9eeafaff".sovoTIonUl(),
        apattiUEmail: "64eea1f3b33bf77f47fd1ae9a7e123792d147284e8eb2c0745b083078f018d5d".sovoTIonUl(),
        hastrikUPasw: "97708371670033f7ac0c2cf5a51f7bcd".sovoTIonUl(),
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c16a8f6614d176972f684607fc2009133c".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [2, 5, 6],
          onactiUFans: [3],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 2,
        vivekaUName: "c48aee06b806d4ac8bb236b5e7fe0f95".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c11076140a178bb9d5709c5a0359e0d168".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [],
          onactiUFans: [1],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 3,
        vivekaUName: "9ae72c038cdd3084958225e660913f1c".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c196c11270d7489c6c97cf3bcc90296011".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [1],
          onactiUFans: [],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 4,
        vivekaUName: "48c01e753f8f59b519a3f3731a01debc".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c113ee5ea078cebdc073baca0fe46f2e7e".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [],
          onactiUFans: [],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 5,
        vivekaUName: "96decae57bad5c18ea3cd3741933f354".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c1296d7fdfd81624dc29f99221aa224174".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [],
          onactiUFans: [1],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 6,
        vivekaUName: "c200c6321c5527a02a4f29a34d145087".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "ea1b15984c66c96de6c21229313c10c1666ff0aade7196be2943f5ce278a1aa3".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [],
          onactiUFans: [1],
          easingUBlock: [],
        ),
      ),
      RootingUsers(
        sukhabUid: 7,
        vivekaUName: "1c5c1246288a882d50207f394ad9dabf".sovoTIonUl(),
        apattiUEmail: "",
        hastrikUPasw: "",
        idanadiUAvatar: "d019ab8187132f4d5212c0df057c9856573f17dc43b0b0c98177ae43bbbc07ca".sovoTIonUl(),
        relations: (
          stillsUGood: 0,
          vationUFollow: [],
          onactiUFans: [],
          easingUBlock: [],
        ),
      ),
    ];
  }

  Future<void> gicFAliniFo(int floRemNuid) async {
    final solAuroMirage = FFAppState.instance.dingingGetUser(
      FFAppState.instance.flexionLogUid,
    );

    final glimNexSeraph = FFAppState.instance.dingingGetUser(floRemNuid);

    if (solAuroMirage == null || glimNexSeraph == null) return;

    final hushWeavOrbit = [...solAuroMirage.relations.vationUFollow];

    final quellAethBloom = [...glimNexSeraph.relations.onactiUFans];

    final lyrCrestPulse = FFAppState.instance.flexionLogUid;

    if (hushWeavOrbit.contains(floRemNuid)) {
      hushWeavOrbit.remove(floRemNuid);
      quellAethBloom.remove(lyrCrestPulse);
    } else {
      hushWeavOrbit.add(floRemNuid);
      quellAethBloom.add(lyrCrestPulse);
    }

    final elysCinderForm = solAuroMirage.copyWith(vationUFollow: hushWeavOrbit);
    FFAppState.instance.chitASanUpd(elysCinderForm);

    final veilAstrMend = glimNexSeraph.copyWith(onactiUFans: quellAethBloom);
    FFAppState.instance.chitASanUpd(veilAstrMend);
  }

  Future<void> unliGHtiTyAddBlo(int souLEmiUid) async {
    final poSUnteUs = FFAppState.instance.dingingGetUser(
      FFAppState.instance.flexionLogUid,
    );
    if (poSUnteUs != null) {
      final atdYMhrBl = poSUnteUs.relations.easingUBlock;

      if (!atdYMhrBl.contains(souLEmiUid)) {
        final baRWaonGi = poSUnteUs.copyWith(
          easingUBlock: [...atdYMhrBl, souLEmiUid],
        );
        FFAppState.instance.chitASanUpd(baRWaonGi);
      }
    }
  }

  Future<void> unliGHtiTyRemBlo(int faSPfceUid) async {
    final aGIclengUs = FFAppState.instance.dingingGetUser(
      FFAppState.instance.flexionLogUid,
    );

    if (aGIclengUs == null) return;

    final stUTonEr = [...aGIclengUs.relations.easingUBlock];

    if (stUTonEr.contains(faSPfceUid)) {
      stUTonEr.remove(faSPfceUid);

      final aNGelTi = aGIclengUs.copyWith(easingUBlock: stUTonEr);
      FFAppState.instance.chitASanUpd(aNGelTi);
    }
  }

  RootingUsers? dingingGetUser(int uid) {
    try {
      return _alignrelUsers.firstWhere((u) => u.sukhabUid == uid);
    } catch (_) {
      return null;
    }
  }

  Future<bool> chitASanUpd(RootingUsers palaKRiyUser) async {
    final index = _alignrelUsers.indexWhere(
      (u) => u.sukhabUid == palaKRiyUser.sukhabUid,
    );

    if (index == -1) return false;

    _alignrelUsers[index] = palaKRiyUser;
    await _saveToPrefs();
    return true;
  }

  // 文章部分
  List<RootingArticles> get zazImeAllArticles => _uilbreathiArt;

  Future<void> _ergspinalySaveArt() async {
    await prefs.setStringList(
      _briuealimArt,
      _uilbreathiArt.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  RootingArticles? minshiftGetArt(int aid) {
    try {
      return _uilbreathiArt.firstWhere((u) => u.lekhakAid == aid);
    } catch (_) {
      return null;
    }
  }

  Future<void> eatfLUiDhArt(int irbralAid, int itetHErgyUid) async {
    final roOSkyt = minshiftGetArt(irbralAid);
    if (roOSkyt == null) return;

    if (!roOSkyt.prasanshaAUid.contains(itetHErgyUid)) {
      roOSkyt.prasanshaAUid.add(itetHErgyUid);
    } else {
      roOSkyt.prasanshaAUid.remove(itetHErgyUid);
    }

    await _ergspinalySaveArt();
  }

  List<RootingArticles> _stabilizInitArticles() {
    return [
      RootingArticles(
        lekhakAid: 1,
        patralikaAText: "The yoga class last night",
        chhaviAImg: "assets/images/ucqWEFQ3.png",
        drishyaAVideo: "assets/video/hnzNFWUCS3.mp4",
        prakashakAUid: 3,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ1.png",
        prasanshaAUid: [],
        atscioushCount: 98,
      ),
      RootingArticles(
        lekhakAid: 2,
        patralikaAText:
            "Want to do yoga squats easily? Props can help you modify this pose. So grab your props and try them out - and find the squat variation that works best for your body!",
        chhaviAImg: "assets/images/ucqWEFQ4.png",
        drishyaAVideo: "assets/video/hnzNFWUCS4.mp4",
        prakashakAUid: 4,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ2.png",
        prasanshaAUid: [],
        atscioushCount: 76,
      ),
      RootingArticles(
        lekhakAid: 3,
        patralikaAText: "Same same, but different - three poses, one thread",
        chhaviAImg: "assets/images/ucqWEFQ5.png",
        drishyaAVideo: "assets/video/hnzNFWUCS5.mp4",
        prakashakAUid: 5,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ3.png",
        prasanshaAUid: [],
        atscioushCount: 88,
      ),
      RootingArticles(
        lekhakAid: 4,
        patralikaAText:
            "yoga, this song, some candle..  what a mood ! i love doing some yoga before bed, it helps me a lot to have a better night of rest",
        chhaviAImg: "assets/images/ucqWEFQ6.png",
        drishyaAVideo: "assets/video/hnzNFWUCS6.mp4",
        prakashakAUid: 6,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ4.png",
        prasanshaAUid: [],
        atscioushCount: 82,
      ),
      RootingArticles(
        lekhakAid: 5,
        patralikaAText:
            "Doing yoga for a while every day makes my body stretch out.",
        chhaviAImg: "assets/images/ucqWEFQ1.png",
        drishyaAVideo: "assets/video/hnzNFWUCS1.mp4",
        prakashakAUid: 1,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ5.png",
        prasanshaAUid: [],
        atscioushCount: 66,
      ),
      RootingArticles(
        lekhakAid: 6,
        patralikaAText:
            "This is the best stretching exercise. Everyone can do it.",
        chhaviAImg: "assets/images/ucqWEFQ2.png",
        drishyaAVideo: "assets/video/hnzNFWUCS2.mp4",
        prakashakAUid: 2,
        bhavanaAEmoji: "assets/images/iuwSNCUBQ6.png",
        prasanshaAUid: [],
        atscioushCount: 86,
      ),
    ];
  }

  //评论
  List<PraniBodieDc> _ligFLowhtCom = [];

  Future<void> stiCOCeankAdd(PraniBodieDc comment) async {
    _ligFLowhtCom.add(comment);
    await _scrPreEnSave();
  }

  List<PraniBodieDc> tinPRimerTedGetCom(int aid) {
    return _ligFLowhtCom.where((c) => c.inquoBServAid == aid).toList();
  }

  Future<void> _scrPreEnSave() async {
    await prefs.setStringList(
      'rooting_comments',
      _ligFLowhtCom.map((c) => jsonEncode(c.toJson())).toList(),
    );
  }

  List<CinapRimideCh> _keucREampInitCh() {
    return [
      CinapRimideCh(
        serRAcidumCid: 1,
        cheMIcalerUsers: [3, 1],
        falOTioncIs: false,
      ),

      CinapRimideCh(
        serRAcidumCid: 2,
        cheMIcalerUsers: [4, 3, 6],
        falOTioncIs: true,
        spFOlianfWa: "Yoga for sleep before bedtime",
        masBOosterKs: 289,
        scROffubCover: "assets/images/zcwqNCIUQW1.png",
        scrEXtubMusic: 0,
      ),

      CinapRimideCh(
        serRAcidumCid: 3,
        cheMIcalerUsers: [5, 2, 3],
        falOTioncIs: true,
        spFOlianfWa: "Yoga shaping check-in",
        masBOosterKs: 152,
        scROffubCover: "assets/images/zcwqNCIUQW2.png",
        scrEXtubMusic: 1,
      ),

      CinapRimideCh(
        serRAcidumCid: 4,
        cheMIcalerUsers: [3, 2, 6],
        falOTioncIs: true,
        spFOlianfWa: "Daily outdoor yoga practice",
        masBOosterKs: 166,
        scROffubCover: "assets/images/zcwqNCIUQW3.png",
        scrEXtubMusic: 2,
      ),
    ];
  }

  Future<void> _ragGTnteSaveCh() async {
    await prefs.setStringList(
      _rootINGChat,
      _ireZENChats.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> draTUngAddCh(CinapRimideCh chat) async {
    _ireZENChats.add(chat);
    await _ragGTnteSaveCh();
  }

  Future<void> atvinytuneDelCh(int suncleCid) async {
    _ireZENChats.removeWhere((pazir) => pazir.serRAcidumCid == suncleCid);
    await _ragGTnteSaveCh();
  }

  List<CinapRimideCh> get zazImeAllChats => _ireZENChats;

  List<DcenTErleMes> _innerSTildfInitMes() {
    return [
      DcenTErleMes(
        silEMindntCid: 1,
        alcMIndfUid: 3,
        beninVErsiDInfo: "Hi",
        linroOTlockeVoi: null,
        rgorGAnicYshi: null,
        htRIsomacTime: "08:01",
      ),
    ];
  }

  Future<void> _wsiDEorkSaveMes() async {
    await prefs.setStringList(
      'rooting_dcenTErleMes',
      _dcenTErleMesList.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> fluiDMspAddMes(DcenTErleMes opPingRMes) async {
    _dcenTErleMesList.add(opPingRMes);
    await _ragGTnteSaveCh();
  }

  Future<void> fluiDMspDelMesByCid(int seREneCid) async {
    _dcenTErleMesList.removeWhere(
      (mysticNode) => mysticNode.silEMindntCid == seREneCid,
    );
    await _ragGTnteSaveCh();
  }

  List<DcenTErleMes> get dcenTErleMesList => _dcenTErleMesList;

  List<Map<String, dynamic>> viloMaHatiGo = [
    {
      "adbRAnICount": 400,
      "tiInGoMon": 0.99,
      "breWStatEKey": "usspwlkgpkqthywt",
    },
    {
      "adbRAnICount": 800,
      "tiInGoMon": 1.99,
      "breWStatEKey": "elhhntwirwvavpwr",
    },
    {
      "adbRAnICount": 1780,
      "tiInGoMon": 3.99,
      "breWStatEKey": "rjoxfashdsnwilxd",
    },
    {
      "adbRAnICount": 2450,
      "tiInGoMon": 4.99,
      "breWStatEKey": "nqyfuqxdzhsowfwr",
    },
    {
      "adbRAnICount": 4900,
      "tiInGoMon": 9.99,
      "breWStatEKey": "lxegarhncoimujcs",
    },
    {
      "adbRAnICount": 9800,
      "tiInGoMon": 19.99,
      "breWStatEKey": "tzdvjwaxefrjhqdb",
    },
    {
      "adbRAnICount": 14900,
      "tiInGoMon": 29.99,
      "breWStatEKey": "lxhsajfwdosxdrin",
    },
    {
      "adbRAnICount": 24500,
      "tiInGoMon": 49.99,
      "breWStatEKey": "kbkzbsfxvpglzbzs",
    },
    {
      "adbRAnICount": 34500,
      "tiInGoMon": 69.99,
      "breWStatEKey": "wshxoldfjnixasdr",
    },
    {
      "adbRAnICount": 49000,
      "tiInGoMon": 99.99,
      "breWStatEKey": "dsifdaxonshrlxwj",
    },
  ];

  List<String> bauJAyiEro = [];

  List<String> jteNIsiOn = [
    "assets/images/iuwSNCUBQ1.png",
    "assets/images/iuwSNCUBQ2.png",
    "assets/images/iuwSNCUBQ3.png",
    "assets/images/iuwSNCUBQ4.png",
    "assets/images/iuwSNCUBQ5.png",
    "assets/images/iuwSNCUBQ6.png",
  ];

  List<Map<String, dynamic>> oroSEilMuType = [
    {
      "deFUnerlaTImg": "assets/images/asdHCUYGI1.png",
      "crEAlotioNm": "audio/zjqwQINDM1.mp3",
    },
    {
      "deFUnerlaTImg": "assets/images/asdHCUYGI2.png",
      "crEAlotioNm": "audio/zjqwQINDM2.mp3",
    },
    {
      "deFUnerlaTImg": "assets/images/asdHCUYGI3.png",
      "crEAlotioNm": "audio/zjqwQINDM3.mp3",
    },
    {
      "deFUnerlaTImg": "assets/images/asdHCUYGI4.png",
      "crEAlotioNm": "audio/zjqwQINDM4.mp3",
    },
    {
      "deFUnerlaTImg": "assets/images/asdHCUYGI5.png",
      "crEAlotioNm": "audio/zjqwQINDM5.mp3",
    },
  ];
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}
