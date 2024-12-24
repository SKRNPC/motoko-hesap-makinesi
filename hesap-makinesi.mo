// HesapMakinesi.mo

actor HesapMakinesi {
  var hucre: Int=0;
    /// Toplama işlemi
    public func toplama(s: Int ) : async Int {
        hucre += s;
        hucre
    };

    /// Çıkarma işlemi
    public func cikarma(s: Int) : async Int {
        hucre  -= s;
        hucre
    };

    /// Çarpma işlemi
    public func carpma(s: Int) : async Int {
        hucre *= s;
        hucre
    };

    /**
     *  Bölme işlemi
     *  Bölme sonucu Int döndürüyoruz. b = 0 olması durumunda null döner.
     */
    public func bolme(s: Int) : async ?Int {
        if (s == 0) {
            null; 
        } else {
            hucre /= s;
            ?hucre
        };
    };

    //temizle
    public func temizle() :async (){
      hucre := 0;
    }
};
