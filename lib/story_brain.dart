import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Xe của bạn bị nổ lốp trên một con đường quanh co ở giữa không đâu và không có tín hiệu điện thoại. Bạn quyết định đi nhờ. Một chiếc xe tải cũ kĩ dừng lại bên bạn. Một người đàn ông với chiếc mũ rộng vành và đôi mắt vô hồn mở cửa xe cho bạn và hỏi: "Cần đi nhờ không, cậu?"',
        choice1: 'Tôi sẽ lên xe. Cảm ơn sự giúp đỡ!',
        choice2: 'Tốt hơn là hỏi anh ta xem có phải là kẻ giết người không.'),
    Story(
        storyTitle: 'Anh ta gật đầu từ từ, không bị ảnh hưởng bởi câu hỏi.',
        choice1: 'Ít nhất anh ta cũng thành thật. Tôi sẽ lên xe.',
        choice2: 'Chờ đã, tôi biết cách thay lốp xe.'),
    Story(
        storyTitle:
            'Khi bạn bắt đầu lái xe, người lạ bắt đầu nói về mối quan hệ của anh ta với mẹ của mình. Anh ta ngày càng tức giận. Anh ta yêu cầu bạn mở ngăn chứa đồ. Bên trong bạn tìm thấy một con dao dính máu, hai ngón tay bị cắt, và một băng cassette của Elton John. Anh ta với tay về phía ngăn chứa đồ.',
        choice1: 'Tôi yêu Elton John! Đưa cho anh ta băng cassette.',
        choice2: 'Là anh ta hoặc tôi! Bạn lấy con dao và đâm anh ta.'),
    Story(
        storyTitle:
            'Gì vậy? Thật là một trò hề! Bạn có biết rằng tai nạn giao thông là nguyên nhân gây tử vong do tai nạn đứng thứ hai cho hầu hết các nhóm tuổi trưởng thành không?',
        choice1: 'Bắt đầu lại',
        choice2: ''),
    Story(
        storyTitle:
            'Khi bạn đâm qua lan can và lao về phía những viên đá sắc nhọn dưới bạn, bạn suy nghĩ về sự khôn ngoan đáng ngờ của việc đâm người trong khi họ đang lái xe bạn đang ngồi.',
        choice1: 'Bắt đầu lại',
        choice2: ''),
    Story(
        storyTitle:
            'Bạn gắn bó với kẻ giết người trong khi hát những câu của "Can you feel the love tonight". Anh ta thả bạn xuống ở thị trấn tiếp theo. Trước khi bạn đi, anh ta hỏi bạn có biết những nơi nào tốt để giấu xác không. Bạn trả lời: "Thử bến cảng".',
        choice1: 'Bắt đầu lại',
        choice2: '')
  ];

  int _storyNumber = 0;

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    return _storyNumber < 3;
  }
}
