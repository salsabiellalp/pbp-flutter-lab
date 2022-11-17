class Budget {
  static List<Budget> budgetList = [];
  String title;
  int nominal;
  String type;
  DateTime date;

  Budget(this.title, this.nominal, this.type, this.date);

  static void addBudget(Budget budget) {
    budgetList.add(budget);
  }
}