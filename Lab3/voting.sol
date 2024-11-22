//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Voting {
    mapping (string => uint) votesReceived;
    string[] public candidateList = ["Uncle Too", "Tony Woodsome"]; //เพิ่มหรือเปลี่ยนชื่อได้ตามต้องการ
    //1 ประการตัวแปรแบบ mapping ชื่อ voters เพื่อเก็บว่า address ไหนโหวตไปแล้ว เพื่อป้องกัน adrress เดิมมาโหวตซ้ำ 
   
  // This function returns the total votes a candidate has received so far
  function totalVotesFor(string memory candidate) public view returns (uint256) {
    //2 ส่งค่ากลับไปว่าคนที่ระบุได้คะแนนเท่าไร
  }

  // This function increments the vote count for the specified candidate. This
  // is equivalent to casting a vote
  function voteForCandidate(string memory candidate) public {
    //3 ใช้ require เพื่อไม่ให้ address ที่โหวตไปแล้วโหวตซ้ำ
    //4 เพิ่มคะแนนโหวตของคนที่ระบุ 
    //5 เซ็ตค่าว่า address นี้โหวตไปแล้ว
  }
  function candidateCount() public view returns (uint256) {
      //6 ส่งจำนวนคนลงสมัครกลับไป   
  }
  function getCandidate(uint index) public view returns (string memory) {
      //7 สงชื่อผู้สมัครตาม index ที่ะบุ 
  } 
}