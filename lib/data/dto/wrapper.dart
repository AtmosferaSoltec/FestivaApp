class Wrapper<T> {
  final bool isSuccess;
  final String message;
  final T? data;

  Wrapper({
    required this.isSuccess,
    required this.message,
    this.data,
  });

  factory Wrapper.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return Wrapper(
      isSuccess: json['isSuccess'] as bool,
      message: json['message'] as String,
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }
}
