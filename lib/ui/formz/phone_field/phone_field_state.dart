part of 'phone_field_bloc.dart';

class PhoneFieldState extends Equatable {
  const PhoneFieldState({
    this.phone = const PhoneField.pure(),
    this.prefix = '+994',
  });

  final PhoneField phone;
  final String prefix;

  @override
  List<Object?> get props => [phone, prefix];

  PhoneFieldState copyWith({
    PhoneField? phone,
    String? prefix,
  }) {
    return PhoneFieldState(
      phone: phone ?? this.phone,
      prefix: prefix ?? this.prefix,
    );
  }
}
