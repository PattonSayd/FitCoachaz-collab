class ResendCodeResult {
  ResendCodeResult({
    required this.shouldResend,
    required this.timeRequired,
  });

  final bool shouldResend;
  final int timeRequired;

  static ResendCodeResult get defaulting =>
      ResendCodeResult(shouldResend: true, timeRequired: 0);
}
