import 'package:flutter/material.dart';

class FilterSwitchListTile extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;
  final String title;
  final String subtitle;

  const FilterSwitchListTile({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
