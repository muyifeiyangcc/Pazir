class PraniBodieDc {
  final int inquoBServAid; // 文章ID
  final int scintEQueUid; // 评论人ID
  final String suBJeContent; // 内容

  PraniBodieDc({
    required this.inquoBServAid,
    required this.scintEQueUid,
    required this.suBJeContent,
  });

  factory PraniBodieDc.fromJson(Map<String, dynamic> json) => PraniBodieDc(
    inquoBServAid: json['inquoBServAid'],
    scintEQueUid: json['scintEQueUid'],
    suBJeContent: json['suBJeContent'],
  );

  Map<String, dynamic> toJson() => {
    'inquoBServAid': inquoBServAid,
    'scintEQueUid': scintEQueUid,
    'suBJeContent': suBJeContent,
  };
}
