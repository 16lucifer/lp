// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRecords {
    struct Student {
        uint id;
        string name;
        uint age;
        string course;
    }

    Student[] private studentList;

    function addStudent(string memory name, uint age, string memory course) public {
        uint studentId = studentList.length;
        studentList.push(Student(studentId, name, age, course));
    }

    function getStudent(uint index) public view returns (uint, string memory, uint, string memory) {
        require(index < studentList.length, "Invalid index");
        Student memory student = studentList[index];
        return (student.id, student.name, student.age, student.course);
    }

    fallback() external {}
}
