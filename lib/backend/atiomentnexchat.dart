class CinapRimideCh {
  final int serRAcidumCid; // 聊天ID
  final List<int> cheMIcalerUsers; // 包含用户
  final bool falOTioncIs; // 是否群聊
  final String? spFOlianfWa; // 群聊文案
  final int? masBOosterKs; // 群聊流量数
  final String? scROffubCover; // 群聊封面
  final int? scrEXtubMusic; // 群聊背景音乐

  CinapRimideCh({
    required this.serRAcidumCid,
    required this.cheMIcalerUsers,
    required this.falOTioncIs,
    this.spFOlianfWa,
    this.masBOosterKs,
    this.scROffubCover,
    this.scrEXtubMusic,
  });


  Map<String, dynamic> toJson() {
    return {
      'serRAcidumCid': serRAcidumCid,
      'cheMIcalerUsers': cheMIcalerUsers,
      'falOTioncIs': falOTioncIs,
      'spFOlianfWa': spFOlianfWa,
      'masBOosterKs': masBOosterKs,
      'scROffubCover': scROffubCover,
      'scrEXtubMusic': scrEXtubMusic,
    };
  }


  factory CinapRimideCh.fromJson(Map<String, dynamic> json) {
    return CinapRimideCh(
      serRAcidumCid: json['serRAcidumCid'] ?? 0,
      cheMIcalerUsers: (json['cheMIcalerUsers'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      falOTioncIs: json['falOTioncIs'] ?? false,
      spFOlianfWa: json['spFOlianfWa'],
      masBOosterKs: json['masBOosterKs'],
      scROffubCover: json['scROffubCover'],
      scrEXtubMusic: json['scrEXtubMusic'] ?? -1,
    );
  }


}
