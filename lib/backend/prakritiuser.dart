class RootingUsers {
  final int sukhabUid;
  final String vivekaUName;
  final String apattiUEmail;
  final String hastrikUPasw;
  final String idanadiUAvatar;

  /// record 记录类型（现代Dart写法）
  final ({
    int stillsUGood,
    List<int> vationUFollow,
    List<int> onactiUFans,
    List<int> easingUBlock,
  })
  relations;

  RootingUsers({
    required this.sukhabUid,
    required this.vivekaUName,
    required this.apattiUEmail,
    required this.hastrikUPasw,
    required this.idanadiUAvatar,
    required this.relations,
  });

  factory RootingUsers.fromJson(Map<String, dynamic> j) => RootingUsers(
    sukhabUid: j['sukhabUid'],
    vivekaUName: j['vivekaUName'],
    apattiUEmail: j['apattiUEmail'],
    hastrikUPasw: j['hastrikUPasw'],
    idanadiUAvatar: j['idanadiUAvatar'],
    relations: (
      stillsUGood: j['muktivaUGood'],
      vationUFollow: List<int>.from(j['centerUFollow']),
      onactiUFans: List<int>.from(j['expansiUFans']),
      easingUBlock: List<int>.from(j['openingUBlock']),
    ),
  );

  Map<String, dynamic> toJson() => {
    'sukhabUid': sukhabUid,
    'vivekaUName': vivekaUName,
    'apattiUEmail': apattiUEmail,
    'hastrikUPasw': hastrikUPasw,
    'idanadiUAvatar': idanadiUAvatar,
    'muktivaUGood': relations.stillsUGood,
    'centerUFollow': relations.vationUFollow,
    'expansiUFans': relations.onactiUFans,
    'openingUBlock': relations.easingUBlock,
  };

  RootingUsers copyWith({
    int? sukhabUid,
    String? vivekaUName,
    String? apattiUEmail,
    String? hastrikUPasw,
    String? idanadiUAvatar,
    int? stillsUGood,
    List<int>? vationUFollow,
    List<int>? onactiUFans,
    List<int>? easingUBlock,
  }) {
    return RootingUsers(
      sukhabUid: sukhabUid ?? this.sukhabUid,
      vivekaUName: vivekaUName ?? this.vivekaUName,
      apattiUEmail: apattiUEmail ?? this.apattiUEmail,
      hastrikUPasw: hastrikUPasw ?? this.hastrikUPasw,
      idanadiUAvatar: idanadiUAvatar ?? this.idanadiUAvatar,
      relations: (
        stillsUGood: stillsUGood ?? relations.stillsUGood,
        vationUFollow: vationUFollow ?? List<int>.from(relations.vationUFollow),
        onactiUFans: onactiUFans ?? List<int>.from(relations.onactiUFans),
        easingUBlock: easingUBlock ?? List<int>.from(relations.easingUBlock),
      ),
    );
  }
}
