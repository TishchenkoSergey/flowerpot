enum SessionStatus {
  init('init'),
  running('running'),
  complete('complete');

  const SessionStatus(this.value);

  final String value;

  static SessionStatus? fromValue(String value) {
    return SessionStatus.values.firstWhereOrNull(
      (it) => it.value == value,
    );
  }
}
