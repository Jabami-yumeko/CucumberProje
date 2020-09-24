
  Feature: Ebay arama

    @ebayarama

    Scenario Outline: TC06_kullanici ebayda urun aramasi yapar
      Given kullanici "https://www.ebay.com" sayfasina gider
      And kullanici ebayda aramakutusuna "<urunler>" yazar
      Then kullanici ebaydaki sonuc sayisini ekrana yazdirir.

      Examples: Urun Isimleri
      |urunler|
      |araba |
      |bebek arabasi|
      |bisiklet     |
