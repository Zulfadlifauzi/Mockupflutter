class EventsModel {
  String? title;
  String? description;
  String? image;
  String? date;

  EventsModel(this.title, this.description, this.image, this.date);
}

List<EventsModel> events = popularevents
    .map((item) =>
        EventsModel(item['title'], item['description'], item['image'], item['date']))
    .toList();

var popularevents = [
  {
    'title': 'Kuliah Dhuha Online',
    'date': 'Fri 7th May',
    'description': 'Anak Kunci Syurga,Doa anak-anak membawa ke syurga',
    'image':
        'https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/233673313_2662159740754584_9071769375305359743_n.jpg?_nc_cat=102&_nc_rgb565=1&ccb=1-5&_nc_sid=a26aad&_nc_ohc=gA-frabS8w8AX9XS82C&_nc_oc=AQky18vytOLhaeaeGUO6O63TDQFZdYoRL9m71UQeHuFzxxP31wptaUZJ2wFUHaXbtFIQg5RqXUKful5yd0bz5Nyq&_nc_ht=scontent.fkul15-1.fna&oh=e9984fe83d2c32604034155812761444&oe=6141F6E1'
  },
  {
    'title': 'Kuliah Khas Sempena Maal Hijrah',
    'date': 'Fri 31th Feb',
    'description': 'Tahun Berlalu... Kita Di Mana?',
    'image':
        'https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/220682418_2657268207910404_4496668155205105706_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=8bfeb9&_nc_ohc=Bh5IV6RFPG0AX-zQ0CZ&tn=c61APdnRkpXPX3Kk&_nc_ht=scontent.fkul15-1.fna&oh=9dc783a94a34b653171e12098c72a660&oe=613FF0A6'
  },
  {
    'title': 'Solat Sunat Aidiladha',
    'date': 'Fri 20th May',
    'description': 'Cabaran dan Pengorbanan',
    'image':
        'https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/219781018_2645471939090031_6193179359101988432_n.jpg?_nc_cat=107&_nc_rgb565=1&ccb=1-5&_nc_sid=a26aad&_nc_ohc=Gdh0x9v63HQAX8940Ij&_nc_ht=scontent.fkul15-1.fna&oh=38ba36dbf112d2f44d8a22f66189cbc2&oe=614343E9'
  },
  {
    'title': 'Program Tazkirah Jumaat Online 1442H',
     'date': 'Fri 2th July',
    'description': 'Kitab Amalam Penghapus Dosa',
    'image':
        'https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/209864319_2632720597031832_1298362492301269544_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=a26aad&_nc_ohc=Od7zp0sBXvEAX8WQrOR&tn=c61APdnRkpXPX3Kk&_nc_ht=scontent.fkul15-1.fna&oh=45176f714c7bba2bac3c68121e277e6e&oe=6143349A'
  },
  {
    'title': 'Ceramah Nuzul Al Quran',
    'date': 'Fri 1th Jan',
    'description':
        'Bulan ramadan yang padanya diturunkan al-quran, menjadi petunjuk bagi sekalian manusia',
    'image':
        'https://scontent-kut2-1.xx.fbcdn.net/v/t1.6435-9/179340930_2591411454496080_6067547676065961777_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=a26aad&_nc_ohc=yS22mJ-Erh4AX8BdUrM&_nc_ht=scontent-kut2-1.xx&oh=aac6b86ccd7e9131240e72f939e5c39c&oe=61430AEC'
  },
];
