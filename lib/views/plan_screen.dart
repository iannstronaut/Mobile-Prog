import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:state/models/data_layer.dart';
import 'package:state/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan get plan => widget.plan;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        if (scrollController.position.userScrollDirection !=
            ScrollDirection.idle) {
          FocusScope.of(context).requestFocus(FocusNode());
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          // Gunakan findPlan untuk mencari plan yang sesuai
          Plan currentPlan = _findPlan(plans, plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  // Helper method untuk mencari plan
  Plan _findPlan(List<Plan> plans, String name) {
    try {
      return plans.firstWhere((p) => p.name == name);
    } catch (e) {
      // Jika plan tidak ditemukan, kembalikan plan kosong atau plan default
      return Plan(name: name, tasks: []);
    }
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final currentPlans = List<Plan>.from(planNotifier.value);
        final planIndex = currentPlans.indexWhere((p) => p.name == plan.name);

        if (planIndex != -1) {
          final currentPlan = currentPlans[planIndex];
          final updatedTasks = List<Task>.from(currentPlan.tasks)
            ..add(const Task());

          currentPlans[planIndex] = Plan(
            name: currentPlan.name,
            tasks: updatedTasks,
          );

          planNotifier.value = currentPlans; // Trigger rebuild
        }
      },
    );
  }

  Widget _buildList(Plan currentPlan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: currentPlan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(currentPlan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          if (selected != null) {
            final currentPlans = List<Plan>.from(planNotifier.value);
            final planIndex =
                currentPlans.indexWhere((p) => p.name == plan.name);

            if (planIndex != -1) {
              final currentPlan = currentPlans[planIndex];
              final updatedTasks = List<Task>.from(currentPlan.tasks);

              updatedTasks[index] = Task(
                description: task.description,
                complete: selected,
              );

              currentPlans[planIndex] = Plan(
                name: currentPlan.name,
                tasks: updatedTasks,
              );

              planNotifier.value = currentPlans; // Trigger rebuild
            }
          }
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          final currentPlans = List<Plan>.from(planNotifier.value);
          final planIndex = currentPlans.indexWhere((p) => p.name == plan.name);

          if (planIndex != -1) {
            final currentPlan = currentPlans[planIndex];
            final updatedTasks = List<Task>.from(currentPlan.tasks);

            updatedTasks[index] = Task(
              description: text,
              complete: task.complete,
            );

            currentPlans[planIndex] = Plan(
              name: currentPlan.name,
              tasks: updatedTasks,
            );

            planNotifier.value = currentPlans; // Trigger rebuild
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
