class DepartmentModel {
  final String id;
  final int dep_number;
  final int? fastlane;
  final int? hht_color;
  final int? hht_font_attr;
  final int? hht_font_color;
  final String? hht_font_name;
  final int? hht_font_size;
  final int? id_food_group;
  final int? id_options_condiment;
  final int? id_options_supplement;
  final int? max_cond_quantity;
  final int? max_supp_quantity;
  final String? ml_name;
  final String name;
  final String oman_text;
  final int? pc_color;
  final int? pc_fix_button;
  final int? pc_font_attr;
  final int? pc_font_color;
  final String? pc_font_name;
  final int? pc_font_size;
  final String? pc_text;
  final int? rm_fix_button;
  final int? rm_font_size;
  final String rm_text;
  final int sysID;
  final bool sysIsActive;

  DepartmentModel(
      {required this.fastlane,
      required this.hht_color,
      required this.hht_font_attr,
      required this.hht_font_color,
      required this.hht_font_name,
      required this.hht_font_size,
      required this.id_food_group,
      required this.id_options_condiment,
      required this.id_options_supplement,
      required this.max_cond_quantity,
      required this.max_supp_quantity,
      required this.ml_name,
      required this.name,
      required this.oman_text,
      required this.pc_color,
      required this.pc_fix_button,
      required this.pc_font_attr,
      required this.pc_font_color,
      required this.pc_font_name,
      required this.pc_font_size,
      required this.pc_text,
      required this.rm_fix_button,
      required this.rm_font_size,
      required this.rm_text,
      required this.sysID,
      required this.sysIsActive,
      required this.id,
      required this.dep_number});

  factory DepartmentModel.fromMap(Map<String, dynamic> json) => DepartmentModel(
        id: json.keys.first,
        dep_number: json[json.keys.first]['dep_number'],
        fastlane: json[json.keys.first]['fastlane'],
        hht_color: json[json.keys.first]['hht_color'],
        hht_font_attr: json[json.keys.first]['hht_font_attr'],
        hht_font_color: json[json.keys.first]['hht_font_color'],
        hht_font_name: json[json.keys.first]['hht_font_name'],
        hht_font_size: json[json.keys.first]['hht_font_size'],
        id_food_group: json[json.keys.first]['id_food_group'],
        id_options_condiment: json[json.keys.first]['id_options_condiment'],
        id_options_supplement: json[json.keys.first]['id_options_supplement'],
        max_cond_quantity: json[json.keys.first]['max_cond_quantity'],
        max_supp_quantity: json[json.keys.first]['max_supp_quantity'],
        ml_name: json[json.keys.first]['ml_name'],
        name: json[json.keys.first]['name'],
        oman_text: json[json.keys.first]['oman_text'],
        pc_color: json[json.keys.first]['pc_color'],
        pc_fix_button: json[json.keys.first]['pc_fix_button'],
        pc_font_attr: json[json.keys.first]['pc_font_attr'],
        pc_font_color: json[json.keys.first]['pc_font_color'],
        pc_font_name: json[json.keys.first]['pc_font_name'],
        pc_font_size: json[json.keys.first]['pc_font_size'],
        pc_text: json[json.keys.first]['pc_text'],
        rm_fix_button: json[json.keys.first]['rm_fix_button'],
        rm_font_size: json[json.keys.first]['rm_font_size'],
        rm_text: json[json.keys.first]['rm_text'],
        sysID: json[json.keys.first]['sys.ID'],
        sysIsActive: json[json.keys.first]['sys.IsActive'],
      );

  Map<String, dynamic> toMap() => {
        id: {
          "dep_number": dep_number,
          "fastlane": fastlane,
          "hht_color": hht_color,
          "hht_font_attr": hht_font_attr,
          "hht_font_color": hht_font_color,
          "hht_font_name": hht_font_name,
          "hht_font_size": hht_font_size,
          "id_food_group": id_food_group,
          "id_options_condiment": id_options_condiment,
          "id_options_supplement": "id_options_supplement",
          "max_cond_quantity": max_cond_quantity,
          "max_supp_quantity": max_supp_quantity,
          "ml_name": ml_name,
          "name": name,
          "oman_text": name,
          "pc_color": pc_color,
          "pc_fix_button": pc_fix_button,
          "pc_font_attr": pc_font_attr,
          "pc_font_color": pc_font_color,
          "pc_font_name": pc_font_name,
          "pc_font_size": pc_font_size,
          "pc_text": pc_text,
          "rm_fix_button": rm_fix_button,
          "rm_font_size": rm_font_size,
          "rm_text": rm_text,
          "sys.ID": sysID,
          "sys.IsActive": sysIsActive,
        }
      };

  @override
  int get hashCode => this.id.hashCode;

  @override
  bool operator ==(Object other) {
    return other is DepartmentModel && this.id == other.id;
  }
}
