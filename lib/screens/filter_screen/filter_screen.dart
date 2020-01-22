import 'package:flutter/material.dart';
import 'package:xlo/models/filter.dart';
import 'package:xlo/screens/filter_screen/components/section_title.dart';

import 'components/animated_button.dart';
import 'components/order_by_field.dart';
import 'components/price_range_field.dart';
import 'components/vender_type_field.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  Filter _filter = Filter(
      maxPrice: 100,
      minPrice: 10,
      orderBy: OrderBy.PRICE,
      vederType: VENDER_TYPE_PARTICULAR);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        title: const Text("Filtrar busca"),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                const SectionTitle(
                  title: "Ordenar por",
                ),
                OrderByField(
                  initialValue: _filter.orderBy,
                  onSaved: (v) {
                    _filter.orderBy = v;
                  },
                ),
                const SectionTitle(
                  title: "Preço (R\$)",
                ),
                PriceRangeField(
                  filter: _filter,
                ),
                const SectionTitle(
                  title: "Tipo de anunciante",
                ),
                VenderTypeField(
                  initialValue: _filter.vederType,
                  onSaved: (v) {
                    _filter.vederType = v;
                  },
                ),
                const SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
          AnimatedButton(
            scrollController: _scrollController,
            onTap: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();

                if (_filter.maxPrice != null && _filter.minPrice != null) {
                  if (_filter.minPrice > _filter.maxPrice) {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: const Text("Faixa de preço inválida"),
                      backgroundColor: Colors.red,
                    ));
                    return;
                  }
                }
                // salvar td e pesquyisar os anuncios
              }
            },
          )
        ],
      ),
    );
  }
}
