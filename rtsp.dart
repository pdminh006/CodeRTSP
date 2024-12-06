import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class RtspPage extends StatefulWidget {
  const RtspPage({Key? key}) : super(key: key);

  @override
  _RtspPageState createState() => _RtspPageState();
}

class _RtspPageState extends State<RtspPage> {
  late VlcPlayerController _vlcPlayerController;

  @override
  void initState() {
    super.initState();
    _vlcPlayerController = VlcPlayerController.network(
      'rtsp://admin:kimdong789@kdkids.ddns.net:554/cam/realmonitor?channel=1&subtype=1',
      hwAcc: HwAcc.full, // Sử dụng hardware acceleration
      autoPlay: true,    // Tự động phát video khi mở
    );
  }

  @override
  void dispose() {
    _vlcPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera RTSP'),
      ),
      body: Center(
        child: VlcPlayer(
          controller: _vlcPlayerController,
          aspectRatio: 16 / 9, // Tỷ lệ khung hình
          placeholder: const Center(child: CircularProgressIndicator()), // Hiển thị trong khi chờ tải
        ),
      ),
    );
  }
}
