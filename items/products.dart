class Products{
  String? materialType;
  String? barcode;
  String? size;
  dynamic color;
  dynamic get color_name{
    return color;
  }
  
  void set color_name(dynamic color){
    switch (color){
      case "SIYAH":
        this.color="SY";
      case "BEYAZ":
        this.color="BY";
      case "GREY":
        this.color="GR";
    }
  }
    
  }
  dynamic retailPrice;
  dynamic price=retailPrice*(kdv+100)/100*nihaiKatmaYuzdesi;
  String? bornSeason;
  int katmaYuzdesi=100;
  dynamic nihaiKatmaYuzdesi=(100+katmaYuzdesi)/100;
  int kdv=18; //geçici

void main(List<String> args) {
  Products product=Products();
  product.color_name="SIYAH";
  print(product.color);
  product.color_name="BEYAZ";
  print(product.color);
  product.color_name="GREY";
  print(product.color);
}