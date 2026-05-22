class PraniBodieDc {
  final int inquoBServAid;
  final int scintEQueUid;
  final String suBJeContent;

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
