class AllModel {
  String? name;
  String? alpha;
  String? image;
  String? description;

  AllModel(this.name, this.image, this.description,this.alpha);
}

List<AllModel> allmosque = allData
    .map((item) => AllModel(item['name'], item['image'], item['description'], item['alpha']))
    .toList();

var allData = [
  {
    'name': 'Masjid Jamek of Kuala Lumpur',
    'alpha':'MASJID JAMEK OF KUALA LUMPUR',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'https://static.toiimg.com/photo/54445819.cms'
  },
  {
    'name': 'Kuchhing City Mosque',
     'alpha':'MASJID NEGERI SARAWAK',

    'description':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'https://live.staticflickr.com/6010/5983602334_3f1e716fbc_b.jpg'
  },
  {
    'name': 'Masjid Tengku Tengah - Masjid Terapung',
    'alpha':'MASJID NEGERI TERENGGANU',

    'description':
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://media-cdn.tripadvisor.com/media/photo-s/09/76/54/cc/tengku-tengah-zaharah.jpg'
  },
  {
    'name': 'Sultan Salahuddin Abdul Aziz Mosque',
    'alpha':'MASJID NEGERI SELANGOR',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'https://cache.etips.com/poi/poi181/o/306.jpg'
  },
  {
    'name': 'Penang State Mosque',
    'alpha':'MASJID NEGERI PENANG',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'http://20umme.com/images/pic10-penang.jpg'
  },
  {
    'name': 'Sultan Abu Bakar Mosque',
     'alpha':'MASJID NEGERI JOHOR',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://blog.airpaz.com/wp-content/uploads/Johor-Bahru-Sultan-Abu-Bakar-State-Mosque-2.png'
  },
  {
    'name': 'Muhammadi Mosque (Masjid Muhammadi)',
    'alpha':'MASJID NEGERI KELANTAN',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://www.e-maik.my/v2/images/masjid/Masjid-Muhammadi/DSC_3805.jpg'
  },
  {
    'name': 'Melaka Straits Mosque',
    'alpha':'MASJID NEGERI MELAKA',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://mosqpedia.org/img/cache/largeimage/W6DLafpxFCl5MTkvFhOxMS77g0dXgCUsDSBIv3fr'
  },
  {
    'name': 'Masjid Negeri Seremban',
    'alpha':'MASJID NEGERI SEREMBAN',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'https://live.staticflickr.com/5778/23359946396_3c6fc9034c_b.jpg'
  },
  {
    'name':
        'Masjid Negeri Pahang (Sultan Ahmad 1)',
    'alpha':'MASJID NEGERI PAHANG',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'http://3.bp.blogspot.com/-IniJIjHrCp8/UZWfDgVHuII/AAAAAAAANhA/L1MxT6LV8FI/s1600/MASJID+SULTAN+AHMAD+SHAH,+KUANTAN,+Pahang+1.jpg'
  },
  {
    'name': 'Penang State Mosque (Masjid Negeri Pulau Pinang)',
    'alpha':'MASJID NEGERI PULAU PINANG',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://assets.bharian.com.my/images/articles/mnpenang_1607676378.jpg'
  },
  {
    'name': 'Masjid Negeri Perak',
    'alpha':'MASJID NEGERI PERAK',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'https://ismaweb.net/wp-content/uploads/2020/06/ubudiah.jpg'
  },
  {
    'name': 'Masjid Negeri Arau (Masjid Negeri Arau Perlis)',
    'alpha':'MASJID NEGERI ARAU PERLIS',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://www.kontraktorkubahmasjid.com/wp-content/uploads/2017/11/masjid-negeri-arau-perlis.png'
  },
  {
    'name': 'Sabah State Mosque (Masjid Negeri Sabah)',
    'alpha':'MASJID NEGERI SABAH',

    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image':
        'https://upload.wikimedia.org/wikipedia/commons/9/98/KotaKinabalu_Sabah_SabahStateMosque-01.jpg'
  },
];
