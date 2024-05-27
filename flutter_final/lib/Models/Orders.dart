class Orders{

  String ProductName;
  String OrderID;
  String ProductDesc;
  String Status;
  String URL;
  int ItemCount;
  int Price;

  Orders(
    this.ProductName,
    this.ProductDesc,
    this.OrderID,
    this.Status,
    this.ItemCount,
    this.URL,
    this.Price
  );

  factory Orders.fromJson(Map<String, dynamic> json){
    return Orders(
      json["ProductName"], 
      json["ProductDesc"],
      json["OrderID"],
      json["Status"], 
      json["ItemCount"],
      json["URL"],
      json["Price"]
      );
  }
}