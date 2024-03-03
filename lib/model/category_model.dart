class CategoryModel{
  late String id, title;
  CategoryModel();

  fromJson(elem){
    id=elem['id'].toString();
    title=elem['name'].toString();
  }
}