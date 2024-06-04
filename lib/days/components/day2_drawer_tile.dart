import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Day2DrawerTile extends StatelessWidget {
  const Day2DrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: const Icon(
              Iconsax.category,
              color: Colors.blue,
              size: 20,
            ),
            title: Text(
              'Overview',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.sms,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Messages',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.card_pos,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Card',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.receipt_add,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Create invoice',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.calendar_2,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Calendar',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.chart,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Statics',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          const SizedBox(height: 20,),
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: Icon(
              Iconsax.document,
              color: Theme.of(context).colorScheme.secondary,
              size: 20,
            ),
            title: Text(
              'Document',
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary
              ),
            ),
          ),
          
      
        ],
      ),
    );
  }
}