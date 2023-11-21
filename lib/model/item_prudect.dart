class DataItem {
  List<Map<String, dynamic>> data = [
    {
      'id': 0,
      'name': 'wireless Controller\nfor PS4',
      'image': 'assets/image/Image Popular Product 1.png',
      'isFavo': true,
      'prise': 64.99,
    },
    {
      'id': 1,
      'name': 'Nike Sport white \nMon Pant',
      'image': 'assets/image/Image Popular Product 2.png',
      'isFavo': true,
      'prise': 50.5,
    },
    {
      'id': 2,
      'name': 'Polygon Joie Kids \nBike Helmet',
      'image': 'assets/image/Image Popular Product 3.png',
      'isFavo': false,
      'prise': 36.99,
    }
  ];

  void favoriteItem(int index) {
    if (index >= 0 && index < data.length) {
      data[index]['isFavo'] = !data[index]['isFavo'];
    }
  }
}

// Create a single instance of DataItem
DataItem dataItem = DataItem();