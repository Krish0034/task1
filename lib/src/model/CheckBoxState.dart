class CheckBoxState
{
  final String title;
  bool value;
  CheckBoxState(
  {
    required this.title,
    this.value=false,
}
);
}

final notifications=[
  CheckBoxState(title: 'Client'),
  CheckBoxState(title: 'Messages'),
  CheckBoxState(title: 'Groups'),
  CheckBoxState(title: 'Calls'),
  CheckBoxState(title: 'Events'),
];