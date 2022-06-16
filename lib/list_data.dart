

/* this works in dart pad
class MenuItem {
  String title;
  String subtitle;
  MenuItem(this.title, this.subtitle);
} //made the class for MenuItem

/*main() {
  MenuItem item = MenuItem('hey', 'there');
  print(item.title + " " + item.subtitle);
*/


  List<MenuItem> menuitems = [
    MenuItem('title 1', 'subtitle 1'),
    MenuItem('title 2', 'subtitle 2'),
    MenuItem('title 3', 'subtitle 3'),
    MenuItem('title 4', 'subtitle 4'),
    MenuItem('title 5', 'subtitle 5'),
    MenuItem('title 6', 'subtitle 6'),
  ];

//as a JSON format

    {"menuitems": [
    {"title":"Title 1", "subtitle": "Subtitle 1"},
    {"title":"Title 2", "subtitle": "Subtitle 2"},
    {"title":"Title 3", "subtitle": "Subtitle 3"},
    {"title":"Title 4", "subtitle": "Subtitle 4"},
    {"title":"Title 5", "subtitle": "Subtitle 5"},
    {"title":"Title 6", "subtitle": "Subtitle 6"},
    ]}

/*
  for(var i=0;i<menuitems.length; i++){
    MenuItem value = menuitems[i];
    print (value.title + " " + value.subtitle);

  }
}
*/

 */
