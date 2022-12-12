// ignore_for_file: avoid_print, sort_child_properties_last, sized_box_for_whitespace, avoid_init_to_null
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double, DateTime) onSubmit;

  const TransactionForm(this.onSubmit, {super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _titleController = TextEditingController();

  // final valueController = TextEditingController();
  final MoneyMaskedTextController _moneyMaskedTextControllerValue =
      MoneyMaskedTextController(
          thousandSeparator: '.', decimalSeparator: ',', precision: 2);

  DateTime? _selectedDate = DateTime.now();

  _submitForm() {
    final title = _titleController.text;
    final value = double.tryParse(
            _moneyMaskedTextControllerValue.text.replaceAll(",", ".")) ??
        0.0;

    if (title.isEmpty || value <= 0 || _selectedDate == null) {
      return;
    }

    widget.onSubmit(title, value, _selectedDate!);
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
      locale: const Locale('pt', 'BR'),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      } else {
        setState(() => _selectedDate = pickedDate);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: _titleController,
            onSubmitted: (_) => _submitForm(),
            decoration: const InputDecoration(labelText: 'Título'),
          ),
          TextField(
            controller: _moneyMaskedTextControllerValue,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (_) => _submitForm(), // submit via teclado
            decoration: const InputDecoration(labelText: 'Valor (R\$)'),
          ),
          Container(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Text(_selectedDate == null
                      ? "Nenhuma Data Selecionada"
                      : "Data Selecionada: ${DateFormat('dd/MM/y').format(_selectedDate!)}"),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        foregroundColor: Theme.of(context).colorScheme.primary),
                    child: const Text(
                      "Selecionar Data",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: _showDatePicker)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text("Nova Transação"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor:
                          Theme.of(context).colorScheme.onPrimary)),
            ],
          )
        ]),
      ),
    );
  }
}
