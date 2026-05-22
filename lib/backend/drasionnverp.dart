class RootingArticles {
  final int lekhakAid;
  final String patralikaAText;
  final String? chhaviAImg;
  final String? drishyaAVideo;
  final int prakashakAUid;
  final String? bhavanaAEmoji;
  final List<int> prasanshaAUid;
  final int atscioushCount;

  RootingArticles({
    required this.lekhakAid,
    required this.patralikaAText,
    this.chhaviAImg,
    this.drishyaAVideo,
    required this.prakashakAUid,
    this.bhavanaAEmoji,
    required this.prasanshaAUid,
    required this.atscioushCount,
  });

  factory RootingArticles.fromJson(Map<String, dynamic> j) => RootingArticles(
    lekhakAid: j['lekhakAid'],
    patralikaAText: j['patralikaAText'],
    chhaviAImg: j['chhaviAImg'],
    drishyaAVideo: j['drishyaAVideo'],
    prakashakAUid: j['prakashakAUid'],
    bhavanaAEmoji: j['bhavanaAEmoji'],
    prasanshaAUid: List<int>.from(j['prasanshaAUid'] ?? []),
    atscioushCount: j['atscioushCount'],
  );

  Map<String, dynamic> toJson() => {
    'lekhakAid': lekhakAid,
    'patralikaAText': patralikaAText,
    'chhaviAImg': chhaviAImg,
    'drishyaAVideo': drishyaAVideo,
    'prakashakAUid': prakashakAUid,
    'bhavanaAEmoji': bhavanaAEmoji,
    'prasanshaAUid': prasanshaAUid,
    'atscioushCount': atscioushCount,
  };
}
