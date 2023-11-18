import 'package:quran_shamel/helper/core_classes/server_gate.dart';


class TafserRepo{
  ServerGate serverGate = ServerGate();

  Future<CustomResponse> getTafseer({required int suraId,required int ayaId})async{
       CustomResponse response = await serverGate.getFromServer(
        url:'http://api.quran-tafseer.com/tafseer/1/${suraId}/${ayaId}'
    );

       return response;
  }





  Future<CustomResponse> getAyatPage({required int pageId})async{
    CustomResponse response = await serverGate.getFromServer(
        url:'v1/page/${pageId}/ar.quran-uthmani'
    );

    return response;
  }

}