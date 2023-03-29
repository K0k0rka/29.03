const String supplyTableName = 'Supply';

class SupplyFields {
  static final List<String> values = [
    id,
    date,
    supplier,
    techType,
    count,
    pricePerPos,
  ];

  static const String id = 'id';
  static const String date = 'date';
  static const String supplier = 'supplier';
  static const String techType = 'tech_type';
  static const String count = 'count';
  static const String pricePerPos = 'price_per_pos';
}

class Supply {
  int? id;
  String? date;
  String? supplier;
  String? techType;
  String? count;
  String? pricePerPos;

  Supply({
    this.id,
    this.date,
    this.supplier,
    this.techType,
    this.count,
    this.pricePerPos,
  });

  @override
  String toString() {
    return '''Recod: {id: $id, date: $date, supplier: $supplier, techType: $techType, countr: $count, 
      pricePerPos: $pricePerPos
    }''';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'supplier': supplier,
      'techType': techType,
      'count': count,
      'pricePerPos': pricePerPos,
    };
  }

  Map<String, Object?> toJson() => {
        SupplyFields.id: id,
        SupplyFields.date: date,
        SupplyFields.supplier: supplier,
        SupplyFields.techType: techType,
        SupplyFields.count: count,
        SupplyFields.pricePerPos: pricePerPos,
      };

  static Supply fromJson(Map<String, Object?> json) => Supply(
        id: json[SupplyFields.id] as int,
        date: json[SupplyFields.date] as String,
        supplier: json[SupplyFields.supplier] as String,
        techType: json[SupplyFields.techType] as String,
        count: json[SupplyFields.count] as String,
        pricePerPos: json[SupplyFields.pricePerPos] as String,
      );
}
