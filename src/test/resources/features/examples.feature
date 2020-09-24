@teknolojikarama

  Feature: Amazon Birden Fazla Arama
    Scenario Outline: TC05_kullanici amazonda urun arar
      Given kullanici amazon sayfasina gider
      And kullanici aramakutusuna "<kelimeler>" yazar ve arar
      Then kullanici sonuc sayisini ekrana yazdirir

      Examples: Urun Isimleri
      |kelimeler|
      |headphones|
      |camera    |
      |drone     |
      |mouse     |
      |tv        |
      |psp       |
      |rtx 2080 ti|
      |mobile phone|
      |laptop      |
      |asus        |
      |msi         |
