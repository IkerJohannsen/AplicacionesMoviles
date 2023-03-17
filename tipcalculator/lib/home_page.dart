import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tipcalculator/providers/tip_time_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip time'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                controller: context.read<TipTimeProvider>().costController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Cost of service",
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("How was the service?"),
          ),
          Column(
            children: context
                .read<TipTimeProvider>()
                .radioGroupValues
                .entries
                .map(
                  (e) => RadioListTile(
                    value: e.key,
                    groupValue: context.watch<TipTimeProvider>().selectedRadio,
                    title: Text(e.value),
                    onChanged: (newValue) {
                      context
                          .read<TipTimeProvider>()
                          .setSelectedRadio(newValue!);
                    },
                  ),
                )
                .toList(),
          ),
          SwitchListTile(
              secondary: Icon(Icons.credit_card),
              title: Text("Round up tip"),
              value: context.watch<TipTimeProvider>().isSelected,
              onChanged: (newValue) {
                context.read<TipTimeProvider>().setIsSelected(newValue);
              }),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: MaterialButton(
              color: Theme.of(context).colorScheme.primary,
              child: Text("CALCULATE", style: TextStyle(color: Colors.white)),
              onPressed: () {
                context.read<TipTimeProvider>().tipCalculation();
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "Tip amount: \$${context.watch<TipTimeProvider>().tip.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
