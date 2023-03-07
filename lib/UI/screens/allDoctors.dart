import 'package:drlist_bloc_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Data/models/model.dart';
import '../../Logic/cubit/doctor_list_cubit.dart';

import '../widgets/DoctorCart.dart';
import '../widgets/LoadingIndicator.dart';

class Drlist extends StatefulWidget {
  @override
  State<Drlist> createState() => _DoctorListState();
}

class _DoctorListState extends State<Drlist> {
  late List<Usermodel> allDoctors;
  late List<Usermodel> searchedForDoctor;
  bool _searching = false;
  final _searchTextController = TextEditingController();

  Widget _buildSearchField() {
    return TextField(
      controller: _searchTextController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: 'search Doctor',
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
      style: TextStyle(color: Colors.white, fontSize: 18),
      onChanged: (searchedDoctor) {
        addSearchedForDoctorToSearchedList(searchedDoctor);
      },
    );
  }

  void addSearchedForDoctorToSearchedList(String searchedDoctor) {
    searchedForDoctor = allDoctors
        .where((Doctor) => Doctor.name.toLowerCase().startsWith(searchedDoctor))
        .toList();

    setState(() {});
  }

  List<Widget> _buildAppBarActions() {
    if (_searching) {
      return [
        IconButton(
            onPressed: () {
              _clearSearch();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            ))
      ];
    } else {
      return [
        IconButton(
            onPressed: _startSearch,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _searching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();
    setState(() {
      _searching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchTextController.clear();
    });
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<DoctorListCubit>(context).getAllDoctors();
  }

  Widget buildBlockwidget() {
    return BlocConsumer<DoctorListCubit, DoctorListState>(
        listener: (context, state) {
      final Statebar = SnackBar(
        duration: Duration(milliseconds: 700),
        content: Text("${state}"),
      );
      ScaffoldMessenger.of(context).showSnackBar(Statebar);
    }, builder: (context, state) {
      if (state is DoctorListLoaded) {
        allDoctors = (state).doctors;
        return Container(
            width: double.infinity,
            color: AppColors().maincolor,
            child: buildLoadedListWidgets());
      }
      if (state is DoctorListLoading) {
        return LoadingIndicator();
      } else {
        return Text("error loading data");
      }
    });
  }

  Widget buildLoadedListWidgets() {
    return ListView.builder(
        itemCount: _searchTextController.text.isEmpty
            ? allDoctors.length
            : searchedForDoctor.length,
        itemBuilder: (context, index) {
          return doctorWidget(
            doctor: _searchTextController.text.isEmpty
                ? allDoctors[index]
                : searchedForDoctor[index],
          );
        });
  }

  Widget _buildAppBarTitle() {
    return Text('DR List');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6574CF),
        title: _searching ? _buildSearchField() : _buildAppBarTitle(),
        actions: _buildAppBarActions(),
      ),
      body: buildBlockwidget(),
    );
  }
}
