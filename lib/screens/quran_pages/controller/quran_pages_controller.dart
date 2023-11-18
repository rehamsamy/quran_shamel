import 'package:get/get.dart';
import 'package:quran_shamel/helper/core_classes/server_gate.dart';
import 'package:quran_shamel/screens/quran_pages/repo/pages_repo.dart';
import 'package:quran_shamel/screens/quran_pages/model/page_model.dart';

class QuranPagesController extends GetxController{
  late TafserRepo _tafserRepo;
  QuranPagesController(this._tafserRepo);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _suraName = '';
  String get suraName => _suraName;


  int _selectedAyaIndex = -1;
  int get selectedAyaIndex => _selectedAyaIndex;

  bool _isHeaderVisible = false;
  bool get isHeaderVisible => _isHeaderVisible;

  String _juzName = '';
  String get juzName => _juzName;

  List<Ayahs> _ayatPageList = [];
  List<Ayahs> get ayatPageList {
    return _ayatPageList;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    await loadHomeData( 1);
  }

  Future<void> loadHomeData(int page) async {
    await getAyatPageList(pageId: 1);
  }


  Future<void> getAyatPageList({required int pageId}) async {
    if(_isLoading){
      return;
    }
    if(pageId==0){
      pageId=1;
    }
    _ayatPageList.clear();
    _isLoading = true;
    update();
    CustomResponse response = await _tafserRepo.getAyatPage(pageId: pageId);
    if (response.success) {
      final x = (response.response!.data['data']['ayahs']) as List;
      x.forEach((element) async {
        _suraName = element['surah']['name'];
        int juzNumber = element['juz'];
        _juzName = _getJuzname(juzNumber.toString());
        // addDataIntoQuarter( element['page'].toString(),element['hizbQuarter'].toString(),element['text']);
        if (element['text'].contains('بِسْمِ اللَّهِ')) {
          element['isBasmalaVisible'] = true;
        } else {
          element['isBasmalaVisible'] = false;
        }
        _ayatPageList.add(Ayahs.fromJson(element));
      });
       print('length -->'+_ayatPageList.length.toString());
    }
    _isLoading = false;
    update();
  }
  setPageSelected(int page) {
    print('page index  -->' + page.toString());
    update();
     getAyatPageList(pageId: page++);
  }


  setSelectedAyaIndex(int ayaId) {
    _selectedAyaIndex=ayaId;
    update();
  }

  setHeaderVisible(bool val) {
    _isHeaderVisible=val;
    update();
  }


  String _getJuzname(String str) {
    if (str.length == 1) {
      str = str.replaceAll('1', 'الأول');
      str = str.replaceAll('2', 'الثاني');
      str = str.replaceAll('3', 'الثالث');
      str = str.replaceAll('4', 'الرابع');
      str = str.replaceAll('5', 'الخامس');
      str = str.replaceAll('6', 'السادس');
      str = str.replaceAll('7', 'السابع');
      str = str.replaceAll('8', 'الثامن');
      str = str.replaceAll('9', 'التاسع');
    } else if (str.length == 2) {
      str = str.replaceAll('10', 'العاشر');
      str = str.replaceAll('11', 'الحادي عشر');
      str = str.replaceAll('12', 'الثاني عشر');
      str = str.replaceAll('13', 'الثالث عشر');
      str = str.replaceAll('14', 'الرابع عشر');
      str = str.replaceAll('15', 'الخامس عشر');
      str = str.replaceAll('16', 'السادس عشر');
      str = str.replaceAll('17', 'السابع عشر');
      str = str.replaceAll('18', 'الثامن عشر');
      str = str.replaceAll('19', 'التاسع عشر');
      str = str.replaceAll('20', 'العشرون');
      str = str.replaceAll('21', 'الحادي والعشرون');
      str = str.replaceAll('22', 'الثاني والعشرون');
      str = str.replaceAll('23', 'الثالث والعشرون');
      str = str.replaceAll('24', 'الرابع والعشرون');
      str = str.replaceAll('25', 'الخامس والعشرون');
      str = str.replaceAll('26', 'السادس والعشرون');
      str = str.replaceAll('27', 'السابع والعشرون');
      str = str.replaceAll('28', 'الثامن والعشرون');
      str = str.replaceAll('29', 'التاسع والعشرون');
      str = str.replaceAll('30', 'الثلاثون');
    }
    // setState(() {
    //   isJuzLoading = false;
    // });

    return str;
  }


  bool _isAudioLoading = false;
  bool   get isAudioLoading=>_isAudioLoading;

  setChangeIsAudioLoading(bool val) {
    _isAudioLoading=val;
    update();
  }

  bool _isPlayed = false;
  bool   get isPlayed=>_isPlayed;

  setChangeIsPlayed(bool val) {
    _isPlayed=val;
    update();
  }

}