void status () {
   Status status = Status.pending;
   
   if (status == Status.approved) {
     print("승인입니다.");
     
   } else if (status == Status.rejected) {
     print("거절입니다.");
   } else {
     print("대기중입니다.");
   }
   
}

enum Status {
  approved,
  pending,
  rejected
}