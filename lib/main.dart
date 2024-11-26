import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HealthDashboard(),
    );
  }
}

class HealthDashboard extends StatefulWidget {
  const HealthDashboard({Key? key}) : super(key: key);

  @override
  _HealthDashboardState createState() => _HealthDashboardState();
}

class _HealthDashboardState extends State<HealthDashboard> {
  bool _showGraph = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildMainContent(),
              const SizedBox(height: 24),
              _buildRecentMeasurements(),
              const SizedBox(height: 24),
              _showGraph ? _buildGraph() : _buildTable(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Health Status Dashboard',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Height: 155cm • Weight: 48kg • BMI: 16.65 (저체중)',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        ToggleButtons(
          children: const [
            Icon(Icons.bar_chart),
            Icon(Icons.table_chart),
          ],
          onPressed: (int index) {
            setState(() {
              _showGraph = index == 0;
            });
          },
          isSelected: [_showGraph, !_showGraph],
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > 768
            ? Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildHealthScoreGauge()),
            const SizedBox(width: 16),
            Expanded(child: _buildStageProgress()),
            const SizedBox(width: 16),
            Expanded(child: _buildHealthStatus()),
          ],
        )
            : Column(
          children: [
            _buildHealthScoreGauge(),
            const SizedBox(height: 16),
            _buildStageProgress(),
            const SizedBox(height: 16),
            _buildHealthStatus(),
          ],
        );
      },
    );
  }

  Widget _buildHealthScoreGauge() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Health Score', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: CircularProgressIndicator(
                        value: 41.4 / 100,
                        strokeWidth: 20,
                        backgroundColor: Colors.grey[200],
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '41.4',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text('Good Health', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }

  Widget _buildStageProgress() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Stage Progress', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _buildProgressBar('0Stage', 0.7),
            const SizedBox(height: 8),
            _buildProgressBar('1Stage', 0.45),
            const SizedBox(height: 8),
            _buildProgressBar('2Stage', 0.9),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressBar(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text('${(value * 100).toInt()}%'),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: value,
          minHeight: 10,
        ),
      ],
    );
  }

  Widget _buildHealthStatus() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Health Status', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildStatusBox('Disease', Colors.red[100]!),
                _buildStatusBox('Poor Health', Colors.orange[100]!),
                _buildStatusBox('Neutral', Colors.yellow[100]!),
                _buildStatusBox('Good Health', Colors.green[100]!),
                _buildStatusBox('Optimal', Colors.teal[100]!),
              ],
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildRangeBox('158-175', '90-100%'),
                _buildRangeBox('140-158', '80-90%'),
                _buildRangeBox('122-140', '70-80%'),
                _buildRangeBox('105-122', '60-70%'),
                _buildRangeBox('88-105', '50-60%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBox(String label, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  Widget _buildRangeBox(String range, String percent) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Text(range, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(percent, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildRecentMeasurements() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Measurements', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _buildMeasurement('Latest (2023-11-12)', 41.4),
            const SizedBox(height: 8),
            _buildMeasurement('Previous (2023-11-03)', 39.8),
          ],
        ),
      ),
    );
  }

  Widget _buildMeasurement(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(value.toString()),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: value / 100,
          minHeight: 10,
        ),
      ],
    );
  }

  Widget _buildGraph() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Health Score Trend', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value % 2 == 0) {
                            return Text(DateFormat('MM/dd').format(DateTime.now().subtract(Duration(days: 10 - value.toInt()))));
                          }
                          return const Text('');
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(10, (index) {
                        return FlSpot(index.toDouble(), 35 + index.toDouble() + (index % 3 == 0 ? -2 : 2));
                      }),
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      dotData: FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTable() {
    final List<Map<String, dynamic>> data = [
      {'date': '2023-11-12', 'score': 41.4, 'status': 'Good Health'},
      {'date': '2023-11-06', 'score': 40.2, 'status': 'Good Health'},
      {'date': '2023-11-03', 'score': 39.8, 'status': 'Neutral'},
      {'date': '2023-10-30', 'score': 38.5, 'status': 'Neutral'},
      {'date': '2023-10-27', 'score': 37.9, 'status': 'Poor Health'},
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Detailed Measurements', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Score')),
                  DataColumn(label: Text('Status')),
                ],
                rows: data.map((item) {
                  return DataRow(cells: [
                    DataCell(Text(item['date'])),
                    DataCell(Text(item['score'].toString())),
                    DataCell(Text(item['status'])),
                  ]);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}