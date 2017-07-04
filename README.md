# 学生信息管理系统
## 主要功能：
1. 用户注册登陆系统，两种权限，普通用户仅支持查询，管理员具有增删查改全部功能
2. 普通用户登陆后选择要查询的表（学生信息、教师信息、课程信息、学生成绩），选择查询方式（按照学号、班级、出生年月等方式）
3. 管理员用户登陆后选择要操作的表（比上面多一个班级信息），选择操作方式（增加一条信息、删除一条信息、修改信息、查询信息、浏览信息）
4. 打印信息

## 数据库表Database StuInfo
| Table user | Table Students | Table Teachers | Table Courses | Table Scores |  
| ---------- | -------------- | -------------- | ------------- | ------------ |  
| username   | stu_id         | tea_id         | cou_id        | stu_id       |  
| password   | stu_name       | tea_name       | cou_class     | cou_id       |  
|            | stu_class      | tea_birth      | cou_time      | score        |  
|            | stu_birth      | tea_degree     | cou_hour      |              |  
|            |                | tea_course     | cou_teacher   |              |  


学生、教师、课程信息表支持通过某一属性直接查询，成绩表支持通过学生信息和课程信息联合查询
