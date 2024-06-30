import 'package:flutter/material.dart';

import '../models/data.dart' as data;
import '../models/models.dart';
import 'email_widget.dart';
import 'search_bar.dart' as search_bar;

// ab yha pe widegts aare h , joki humko page prr dikhai pdega
class EmailListView extends StatelessWidget {
  // stateless widegt bnaya h , baad me change nahi kiya jaa skta h
  const EmailListView({
    super.key, // key pass ki h kuki list aayegi , or list me hrr item ko unique key pass hogi
    this.selectedIndex,
    this.onSelected,
    required this.currentUser,
  });

  final int?
      selectedIndex; // int ke aage question mark ka mtlb ki ye null bhi ho skta h
  final ValueChanged<int>? onSelected;
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 8.0), // ends curve krne ko
      child: ListView(
        // list view dii gyi h
        children: [
          const SizedBox(height: 8),
          search_bar.SearchBar(
              currentUser:
                  currentUser), // yha thoda khatarnaak kaam hua h , dhyn se smjho , searchbar ko call lgai gyi h ,joki humko current user ka avatar dikhara h
          const SizedBox(height: 8),
          ...List.generate(
            // list generate ki gyi h
            data.emails.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: EmailWidget(
                  email: data.emails[index],
                  onSelected: onSelected != null
                      ? () {
                          onSelected!(index);
                        }
                      : null,
                  isSelected: selectedIndex == index,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
