class GroupModel {
  String? title;
  String? description;
  String? image;

  GroupModel(this.title, this.description, this.image);
}

List<GroupModel> groupsy = grouping
    .map(
        (item) => GroupModel(item['title'], item['description'], item['image']))
    .toList();

var grouping = [
  {
    'title': 'Alpha',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
    'image':
        'https://www.quickanddirtytips.com/sites/default/files/images/2332/people-persons-peoples.jpg'
  },
  {
    'title': 'Bravo',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'image':
        'https://images.unsplash.com/photo-1511988617509-a57c8a288659?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVvcGxlJTIwaGF2aW5nJTIwZnVufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'
  },
  {
    'title': 'Charlie',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'image':
        'https://media.istockphoto.com/photos/group-portrait-of-a-creative-business-team-standing-outdoors-three-picture-id1146473249?k=6&m=1146473249&s=612x612&w=0&h=W1xeAt6XW3evkprjdS4mKWWtmCVjYJnmp-LHvQstitU='
  },
  {
    'title': 'Delta',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'image':
        'https://images.pexels.com/photos/2422290/pexels-photo-2422290.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
  },
  {
    'title': 'Echo',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'image':
        'https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/05/Female_Male_Conversation_1296x728-header-1296x729.jpg?w=1155&h=2268'
  },
  {
    'title': 'Foxtrot',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'image': 'https://dz9yg0snnohlc.cloudfront.net/can-people-change-or-1.jpg'
  },
];
