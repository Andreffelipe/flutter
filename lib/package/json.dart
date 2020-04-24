class json {
  bool isThisSupported;

  json({this.isThisSupported});

  json.fromJson(Map<String, dynamic> json) {
    isThisSupported = json[' isThisSupported '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[' isThisSupported '] = this.isThisSupported;
    return data;
  }
}