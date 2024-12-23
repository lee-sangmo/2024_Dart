// enum : 열거형, 상수를 정의하는 방법
enum Status {
  approved, // 승인
  pending, // 대기
  rejected, // 거절
}

void main() {
  Status msg = Status.approved;
  if (msg == Status.approved) {
    print('승인 상태');
  } else if (msg == Status.pending) {
    print('대기 상태');
  } else if (msg == Status.rejected) {
    print('거절 상태');
  } else {
    print('예외 상태');
  }
}
