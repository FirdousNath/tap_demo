import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_demo/app/injection.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/app_back_button.dart';
import 'package:tap_demo/design_system/molecules/status_tag.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';
import 'package:tap_demo/features/bond_details/presentation/bloc/bond_details_cubit.dart';
import 'package:tap_demo/features/bond_details/presentation/bloc/bond_details_state.dart';
import 'package:tap_demo/features/bond_details/presentation/widgets/issuer_details.dart';
import 'package:tap_demo/features/bond_details/presentation/widgets/pros_cons.dart';

class BondsDetailsScreen extends StatefulWidget {
  const BondsDetailsScreen({super.key});

  @override
  State<BondsDetailsScreen> createState() => _BondsDetailsScreenState();
}

class _BondsDetailsScreenState extends State<BondsDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;
  final cubit = getIt<BondDetailsCubit>();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (_tabController.index != _currentIndex) {
        setState(() {
          _currentIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bondId = (ModalRoute.of(context)?.settings.arguments ?? '') as String;

    return SafeArea(
      top: false,
      child: BlocProvider(
        create: (context) => cubit..fetchBondDetails(bondId),
        child: BlocBuilder<BondDetailsCubit, BondDetailsState>(
          builder: (context, BondDetailsState state) {
            return Scaffold(
              backgroundColor: bgColor,
              appBar: AppBar(
                leading: AppBackButton(),
                backgroundColor: bgColor,
              ),
              body: SingleChildScrollView(
                child:
                    state.bondDetails != null
                        ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: large),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: medium),
                              child: Container(
                                padding: EdgeInsets.all(micro),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: tinyBorderRadius,
                                ),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  height: xxlarge,
                                  width: xxlarge,
                                ),
                              ),
                            ),
                            const SizedBox(height: small),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: medium),
                              child: Text(
                                state.bondDetails!.companyName,
                                style: AppTextStyles.titleMedium,
                              ),
                            ),
                            const SizedBox(height: small),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: medium),
                              child: Text(
                                state.bondDetails!.description,
                                style: AppTextStyles.description,
                              ),
                            ),
                            const SizedBox(height: small),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: medium),
                              child: Row(
                                children: [
                                  StatusTag(
                                    chipColor: blueChipColor,
                                    color: blueColor,
                                    text: state.bondDetails!.isinNo,
                                  ),
                                  const SizedBox(width: small),
                                  StatusTag(
                                    chipColor: successChipColor,
                                    color: successColor,
                                    text: "ACTIVE",
                                  ),
                                  const SizedBox(width: small),
                                ],
                              ),
                            ),
                            const SizedBox(height: large),
                            _tabSection(context, state, cubit),
                          ],
                        )
                        : Center(child: Text("No data found")),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _tabSection(
    BuildContext context,
    BondDetailsState state,
    BondDetailsCubit cubit,
  ) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
            controller: _tabController,
            labelColor: blueColor,
            indicatorColor: blueColor,
            unselectedLabelColor: disabledTabColor,
            dividerColor: disabledColor,
            dividerHeight: 0.2,
            labelStyle: AppTextStyles.description.copyWith(
              fontWeight: FontWeight.w500,
            ),
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            enableFeedback: true,
            labelPadding: EdgeInsets.symmetric(horizontal: medium),

            tabs: [Tab(text: "ISIN Analysis"), Tab(text: "Pros & Cons")],
          ),
          AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (widget, animation) {
              return FadeTransition(opacity: animation, child: widget);
            },
            child:
                _currentIndex == 0
                    ? IssuerDetails(
                      bondDetails: state.bondDetails!,
                      showRevenueChart: state.showRevenueChart,
                      onRevenueChartTap:
                          (bool value) => cubit.showRevenueChart(value),
                    )
                    : ProsCons(
                      pros: state.bondDetails!.pros,
                      cons: state.bondDetails!.cons,
                    ),
            // Selects content based on active tab
          ),
        ],
      ),
    );
  }
}
