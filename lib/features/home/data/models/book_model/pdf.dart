import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    isAvailable: json['isAvailable'] as bool?,
    acsTokenLink: json['acsTokenLink'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'isAvailable': isAvailable,
    if (acsTokenLink != null) 'acsTokenLink': acsTokenLink,
  };

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}

// import 'package:equatable/equatable.dart';

// class Pdf extends Equatable {
//   final bool? isAvailable;

//   const Pdf({this.isAvailable});

//   factory Pdf.fromJson(Map<String, dynamic> json) =>
//       Pdf(isAvailable: json['isAvailable'] as bool?);

//   Map<String, dynamic> toJson() => {'isAvailable': isAvailable};

//   @override
//   List<Object?> get props => [isAvailable];
// }
