class Isimler {
  final String _isimler;
  final String _dogumTarihleri;
  final String _kisiBilgileri;
  final String _resimler;
  final String _kucukResimler;

 


  get isimler => _isimler;

  get dogumTarihleri => _dogumTarihleri;

  get kisiBilgileri => _kisiBilgileri;

  get resimler => _resimler;

  get kucukResimler => _kucukResimler;

  Isimler(
      this._isimler, this._dogumTarihleri, this._kisiBilgileri, this._resimler,this._kucukResimler);

  @override
  String toString() {
    return "$_isimler - $_dogumTarihleri";
  }
}
