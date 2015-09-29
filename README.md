Tulospalvelu
============

Riippuvuudet
------------

 - **Qt 4**
 - https://wiki.qt.io/Qt_Serial_Port

Ristikäännös
------------

Windows buildia varten on luotu muutama scripti helpottamaan ristikäännöksen
tekemistä. Ristikäännös on toteutettu käyttämällä mingw-w64 pakettia.
Scriptit löytyvät hakemistosta mingw-w64 ja niitä käytetään seuraavasti.

 1. Kopioi hakemisto mingw-w64 koneellesi.
 2. Siirry hakemistoon ja aja scriptit 1-init.sh, 2-prebuild.sh ja 3-build.sh
 3. Kerää tarvittavat dll:t ja exe ajamalla scripti 4-make\_copy.sh /polku/kohde/hakemistoon

Fedora-paketit
--------------

yum install git mingw-w64-tools minwg32*

MacOS-käännös
-------------

Kun Qt4 ja QtSerialPort asennettu, niin käännöksen pitäisi onnistua. Jotta Tulospalvelu.app
toimisi ilman Qt:n ja QtSerialPortin asennusta, voidaan dynaamiset kirjastot/frameworkit
kopioida .app -bundleen bash-skriptillä bundle_dyn_libs_osx.sh. [Lisätietoa](http://doc.qt.io/qt-4.8/deployment-mac.html)

### Virheitä

 - Hiiren kakkospainikkeen painallus kaataa ohjelman (ainakin tulosten selauksessa)
