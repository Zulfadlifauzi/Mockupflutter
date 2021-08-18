class OppoModel {
  String? title;
  String? description;
  String? date;

  OppoModel(this.title, this.description, this.date);
}

List<OppoModel> chance = opportunity
    .map((item) =>
        OppoModel(item['title'], item['description'], item['date']))
    .toList();

var opportunity = [
  {
    'title': 'UI & UX Reseacher',
    'date': 'Fri 7th May',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Suprise Planner & Birthday',
    'date': 'Fri 31th Feb',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Quality Assurances Application',
    'date': 'Fri 20th May',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Application Tester',
     'date': 'Fri 2th July',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
  {
    'title': 'Website needed - quote',
    'date': 'Fri 1th Jan',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
  },
];
