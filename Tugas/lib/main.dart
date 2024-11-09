import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tugas/widget/filter_selector.dart';

List<CameraDescription> cameras = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camera Photo Filter',
      theme: ThemeData.dark(),
      home: const CameraPhotoFilter(),
    );
  }
}

class CameraPhotoFilter extends StatefulWidget {
  const CameraPhotoFilter({super.key});

  @override
  _CameraPhotoFilterState createState() => _CameraPhotoFilterState();
}

class _CameraPhotoFilterState extends State<CameraPhotoFilter> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  final _filters = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];
  final _filterColor = ValueNotifier<Color>(Colors.white);

  @override
  void initState() {
    super.initState();
    _controller = CameraController(cameras[0], ResolutionPreset.high);
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;
      final XFile picture = await _controller.takePicture();
      // Implement your photo saving logic here
      print('Picture taken: ${picture.path}');
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Camera with Filters')),
      body: Stack(
        children: [
          Positioned.fill(
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _buildPhotoWithFilter(),
                _buildFilterSelector(),
                ElevatedButton(
                  onPressed: _takePicture,
                  child: const Icon(Icons.camera),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        return ColorFiltered(
          colorFilter: ColorFilter.mode(color.withOpacity(0.5), BlendMode.color),
          child: Container(color: color.withOpacity(0.5)),
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}
