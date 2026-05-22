class DcenTErleMes {
  final int silEMindntCid;
  final int alcMIndfUid;
  final String beninVErsiDInfo;
  final String? linroOTlockeVoi;
  final String? rgorGAnicYshi;
  final String? htRIsomacTime;

  DcenTErleMes({
    required this.silEMindntCid,
    required this.alcMIndfUid,
    required this.beninVErsiDInfo,
    this.linroOTlockeVoi,
    this.rgorGAnicYshi,
    this.htRIsomacTime,
  });

  Map<String, dynamic> toJson() {
    return {
      "silEMindntCid": silEMindntCid,
      "alcMIndfUid": alcMIndfUid,
      "beninVErsiDInfo": beninVErsiDInfo,
      "linroOTlockeVoi": linroOTlockeVoi,
      "rgorGAnicYshi": rgorGAnicYshi,
      "htRIsomacTime": htRIsomacTime,
    };
  }

  factory DcenTErleMes.fromJson(Map<String, dynamic> json) {
    return DcenTErleMes(
      silEMindntCid: json["silEMindntCid"],
      alcMIndfUid: json["alcMIndfUid"],
      beninVErsiDInfo: json["beninVErsiDInfo"],
      linroOTlockeVoi: json["linroOTlockeVoi"],
      rgorGAnicYshi: json["rgorGAnicYshi"],
      htRIsomacTime: json["htRIsomacTime"],
    );
  }
}
