import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/models.dart';

class BudgetData extends StatefulWidget {
  const BudgetData({super.key});

  @override
  State<BudgetData> createState() => _BudgetDataState();
}

class _BudgetDataState extends State<BudgetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: const MyDrawer(),
      body: Budget.budgetList.isEmpty
          ? const Center(
              child: Text(
              'Belum ada data',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ))
          : ListView.builder(
              itemCount: Budget.budgetList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListTile(
                        title: Text(Budget.budgetList[index].title),
                        subtitle: Text(
                          '${Budget.budgetList[index].type == 'Pemasukan'
                                  ? '+'
                                  : '-'}Rp. ${Budget.budgetList[index].nominal}',
                          style: TextStyle(
                              color:
                                  Budget.budgetList[index].type == 'Pemasukan'
                                      ? Colors.green
                                      : Colors.red),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              Budget.budgetList[index].date
                                  .toString()
                                  .split(' ')[0],
                              style: const TextStyle(fontSize: 12),
                            ),
                            const SizedBox(height: 4),
                            Text(Budget.budgetList[index].type),
                          ],
                        )),
                  ),
                );
              },
            ),
    );
  }
}