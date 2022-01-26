class ArticleModel {
  final String id;
  final int article_number;
  final int article_type;
  final int? hht_color;
  final int? hht_default_setting;
  final int? hht_font_attr;
  final int? hht_font_color;
  final int? hht_font_size;
  final int id_departament;
  final String internal_name;
  final int? main_price;
  final String name;
  final String? oman_text;
  final int? pc_color;
  final int? pc_font_attr;
  final int? pc_font_color;
  final String? pc_font_name;
  final int? pc_font_size;
  final String pc_text;
  final int purchase_price;
  final String rm_text;
  final int sysID;
  final bool sysIsActive;

  ArticleModel({
    required this.article_number,
    required this.article_type,
    required this.hht_color,
    required this.hht_default_setting,
    required this.hht_font_attr,
    required this.hht_font_color,
    required this.hht_font_size,
    required this.id_departament,
    required this.internal_name,
    required this.main_price,
    required this.name,
    required this.oman_text,
    required this.pc_color,
    required this.pc_font_attr,
    required this.pc_font_color,
    required this.pc_font_name,
    required this.pc_font_size,
    required this.pc_text,
    required this.purchase_price,
    required this.rm_text,
    required this.sysID,
    required this.sysIsActive,
    required this.id,
  });

  factory ArticleModel.fromMap(Map<String, dynamic> json) => ArticleModel(
        id: json.keys.first,
        hht_color: json[json.keys.first]['hht_color'],
        hht_font_attr: json[json.keys.first]['hht_font_attr'],
        hht_font_color: json[json.keys.first]['hht_font_color'],
        hht_font_size: json[json.keys.first]['hht_font_size'],
        name: json[json.keys.first]['name'],
        oman_text: json[json.keys.first]['oman_text'],
        pc_color: json[json.keys.first]['pc_color'],
        pc_font_attr: json[json.keys.first]['pc_font_attr'],
        pc_font_color: json[json.keys.first]['pc_font_color'],
        pc_font_name: json[json.keys.first]['pc_font_name'],
        pc_font_size: json[json.keys.first]['pc_font_size'],
        pc_text: json[json.keys.first]['pc_text'],
        rm_text: json[json.keys.first]['rm_text'],
        sysID: json[json.keys.first]['sys.ID'],
        sysIsActive: json[json.keys.first]['sys.IsActive'],
        article_number: json[json.keys.first]['article_number'],
        article_type: json[json.keys.first]['article_type'],
        hht_default_setting: json[json.keys.first]['hht_default_setting'],
        id_departament: json[json.keys.first]['id_departament'],
        internal_name: json[json.keys.first]['internal_name'],
        main_price: json[json.keys.first]['main_price'],
        purchase_price: json[json.keys.first]['purchase_price'] == 0
            ? 1
            : json[json.keys.first]['purchase_price'],
      );

  Map<String, dynamic> toMap() => {
        id: {
          "hht_color": hht_color,
          "hht_font_attr": hht_font_attr,
          "hht_font_color": hht_font_color,
          "hht_font_size": hht_font_size,
          "name": name,
          "oman_text": oman_text,
          "pc_color": pc_color,
          "pc_font_attr": pc_font_attr,
          "pc_font_color": pc_font_color,
          "pc_font_name": pc_font_name,
          "pc_font_size": pc_font_size,
          "pc_text": pc_text,
          "rm_text": rm_text,
          "sys.ID": sysID,
          "sys.IsActive": sysIsActive,
          "article_number": article_number,
          "article_type": article_type,
          "hht_default_setting": hht_default_setting,
          "id_departament": id_departament,
          "internal_name": internal_name,
          "main_price": main_price,
          "purchase_price": purchase_price,
        }
      };

  @override
  int get hashCode => this.id.hashCode;

  @override
  bool operator ==(Object other) {
    return other is ArticleModel && this.id == other.id;
  }
}
