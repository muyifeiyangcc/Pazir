class CinapRimideCh {
  final int serRAcidumCid;
  final List<int> cheMIcalerUsers;
  final bool falOTioncIs;
  final String? spFOlianfWa;
  final int? masBOosterKs;
  final String? scROffubCover;
  final int? scrEXtubMusic;

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
      cheMIcalerUsers:
          (json['cheMIcalerUsers'] as List<dynamic>?)
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
