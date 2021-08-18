class OppoModel {
  String? title;
  String? description;
  String? date;
  String? info;
  String? alpha;

  OppoModel(this.title, this.description, this.date, this.info, this.alpha);
}

List<OppoModel> chance = opportunity
    .map((item) => OppoModel(
        item['title'], item['description'], item['date'], item['info'],item['alpha']))
    .toList();

var opportunity = [
  {
    'title': 'Legal Research Assistant',
    'date': 'Fri 7th May',
    'info': 'More info',
    'alpha':'Legal,legal Technology',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'DevOps Officer',
    'date': 'Fri 31th Feb',
    'info': 'More info',
    'alpha':'Great working opportunity',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Mobile Developer',
    'date': 'Fri 20th May',
    'info': 'More info',
    'alpha':'Wide exposure ',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Web Design IOS & Android',
    'date': 'Fri 2th July',
    'info': 'More info',
    'alpha':'Understanding culture',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Graphics Designer & UI Designer',
    'date': 'Fri 1th Jan',
    'info': 'More info',
    'alpha':'Fun environment',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
];
