import 'package:flutter/material.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/wigdets/filters_switch_list_tile.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFiters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FilterSwitchListTile(
            value: activeFiters[Filter.glutenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: 'Gluten-free',
            subtitle: 'Only include gluten-free meals',
          ),
          FilterSwitchListTile(
            value: activeFiters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals',
          ),
          FilterSwitchListTile(
            value: activeFiters[Filter.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: 'Vegan',
            subtitle: 'Only include vegan meals',
          ),
          FilterSwitchListTile(
            value: activeFiters[Filter.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals',
          ),
        ],
      ),
    );
  }
}
