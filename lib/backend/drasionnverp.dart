class RootingArticles {
  final int lekhakAid; // 文章ID
  final String patralikaAText; // 文案
  final String? chhaviAImg; // 图片
  final String? drishyaAVideo; // 视频
  final int prakashakAUid; // 发布人ID
  final String? bhavanaAEmoji; // 表情图片
  final List<int> prasanshaAUid; // 点赞数组（用户ID列表）
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
