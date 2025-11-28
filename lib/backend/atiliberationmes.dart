class DcenTErleMes {
  final int silEMindntCid;        // 群聊ID
  final int alcMIndfUid;          // 评论人ID
  final String beninVErsiDInfo;   // 消息
  final String? linroOTlockeVoi;  // 语音url
  final String? rgorGAnicYshi;    // 语音时长
  final String? htRIsomacTime;    // 发送时间

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