/// surahs : [{"number":1,"name":"سُورَةُ ٱلْفَاتِحَةِ","englishName":"Al-Faatiha","englishNameTranslation":"The Opening","revelationType":"Meccan","ayahs":[{"number":1,"text":"﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ","numberInSurah":1,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":2,"text":"الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ","numberInSurah":2,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":3,"text":"الرَّحْمَٰنِ الرَّحِيمِ","numberInSurah":3,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":4,"text":"مَالِكِ يَوْمِ الدِّينِ","numberInSurah":4,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":5,"text":"إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ","numberInSurah":5,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":6,"text":"اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ","numberInSurah":6,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":7,"text":"صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ","numberInSurah":7,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false}]}]

class SuraModel {
  SuraModel({
      List<Surahs>? surahs,}){
    _surahs = surahs;
}

  SuraModel.fromJson(dynamic json) {
    if (json['surahs'] != null) {
      _surahs = [];
      json['surahs'].forEach((v) {
        _surahs?.add(Surahs.fromJson(v));
      });
    }
  }
  List<Surahs>? _surahs;
SuraModel copyWith({  List<Surahs>? surahs,
}) => SuraModel(  surahs: surahs ?? _surahs,
);
  List<Surahs>? get surahs => _surahs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_surahs != null) {
      map['surahs'] = _surahs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// number : 1
/// name : "سُورَةُ ٱلْفَاتِحَةِ"
/// englishName : "Al-Faatiha"
/// englishNameTranslation : "The Opening"
/// revelationType : "Meccan"
/// ayahs : [{"number":1,"text":"﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ","numberInSurah":1,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":2,"text":"الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ","numberInSurah":2,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":3,"text":"الرَّحْمَٰنِ الرَّحِيمِ","numberInSurah":3,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":4,"text":"مَالِكِ يَوْمِ الدِّينِ","numberInSurah":4,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":5,"text":"إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ","numberInSurah":5,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":6,"text":"اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ","numberInSurah":6,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false},{"number":7,"text":"صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ","numberInSurah":7,"juz":1,"manzil":1,"page":1,"ruku":1,"hizbQuarter":1,"sajda":false}]

class Surahs {
  Surahs({
      num? number, 
      String? name, 
      String? englishName, 
      String? englishNameTranslation, 
      String? revelationType, 
      List<Ayahs>? ayahs,}){
    _number = number;
    _name = name;
    _englishName = englishName;
    _englishNameTranslation = englishNameTranslation;
    _revelationType = revelationType;
    _ayahs = ayahs;
}

  Surahs.fromJson(dynamic json) {
    _number = json['number'];
    _name = json['name'];
    _englishName = json['englishName'];
    _englishNameTranslation = json['englishNameTranslation'];
    _revelationType = json['revelationType'];
    if (json['ayahs'] != null) {
      _ayahs = [];
      json['ayahs'].forEach((v) {
        _ayahs?.add(Ayahs.fromJson(v));
      });
    }
  }
  num? _number;
  String? _name;
  String? _englishName;
  String? _englishNameTranslation;
  String? _revelationType;
  List<Ayahs>? _ayahs;
Surahs copyWith({  num? number,
  String? name,
  String? englishName,
  String? englishNameTranslation,
  String? revelationType,
  List<Ayahs>? ayahs,
}) => Surahs(  number: number ?? _number,
  name: name ?? _name,
  englishName: englishName ?? _englishName,
  englishNameTranslation: englishNameTranslation ?? _englishNameTranslation,
  revelationType: revelationType ?? _revelationType,
  ayahs: ayahs ?? _ayahs,
);
  num? get number => _number;
  String? get name => _name;
  String? get englishName => _englishName;
  String? get englishNameTranslation => _englishNameTranslation;
  String? get revelationType => _revelationType;
  List<Ayahs>? get ayahs => _ayahs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['name'] = _name;
    map['englishName'] = _englishName;
    map['englishNameTranslation'] = _englishNameTranslation;
    map['revelationType'] = _revelationType;
    if (_ayahs != null) {
      map['ayahs'] = _ayahs?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// number : 1
/// text : "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ"
/// numberInSurah : 1
/// juz : 1
/// manzil : 1
/// page : 1
/// ruku : 1
/// hizbQuarter : 1
/// sajda : false

class Ayahs {
  Ayahs({
      num? number, 
      String? text,
     String? suraName,
    num? numberInSurah,
      num? juz, 
      num? manzil, 
      num? page, 
      num? ruku, 
      num? hizbQuarter,
    dynamic? sajda,}){
    _number = number;
    _text = text;
    _suraName=suraName;
    _numberInSurah = numberInSurah;
    _juz = juz;
    _manzil = manzil;
    _page = page;
    _ruku = ruku;
    _hizbQuarter = hizbQuarter;
    _sajda = sajda;
}

  Ayahs.fromJson(dynamic json) {
    _number = json['number'];
    _text = json['text'];
    _suraName=json['suraName'];
    _numberInSurah = json['numberInSurah'];
    _juz = json['juz'];
    _manzil = json['manzil'];
    _page = json['page'];
    _ruku = json['ruku'];
    _hizbQuarter = json['hizbQuarter'];
    _sajda = json['sajda'];
  }
  num? _number;
  String? _text;
  String?_suraName;
  num? _numberInSurah;
  num? _juz;
  num? _manzil;
  num? _page;
  num? _ruku;
  num? _hizbQuarter;
  dynamic? _sajda;
Ayahs copyWith({  num? number,
  String? text,
  String?suraName,
  num? numberInSurah,
  num? juz,
  num? manzil,
  num? page,
  num? ruku,
  num? hizbQuarter,
  dynamic? sajda,
}) => Ayahs(  number: number ?? _number,
  text: text ?? _text,
  suraName:suraName??_suraName,
  numberInSurah: numberInSurah ?? _numberInSurah,
  juz: juz ?? _juz,
  manzil: manzil ?? _manzil,
  page: page ?? _page,
  ruku: ruku ?? _ruku,
  hizbQuarter: hizbQuarter ?? _hizbQuarter,
  sajda: sajda ?? _sajda,
);
  num? get number => _number;
  String? get text => _text;
  String?get suraName=>_suraName;
  num? get numberInSurah => _numberInSurah;
  num? get juz => _juz;
  num? get manzil => _manzil;
  num? get page => _page;
  num? get ruku => _ruku;
  num? get hizbQuarter => _hizbQuarter;
  dynamic? get sajda => _sajda;

  setSuraName(String name){
    _suraName=name;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = _number;
    map['text'] = _text;
    map['suraName']=_suraName;
    map['numberInSurah'] = _numberInSurah;
    map['juz'] = _juz;
    map['manzil'] = _manzil;
    map['page'] = _page;
    map['ruku'] = _ruku;
    map['hizbQuarter'] = _hizbQuarter;
    map['sajda'] = _sajda;
    return map;
  }

}