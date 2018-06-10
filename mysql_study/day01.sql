-- 查看当前数据库有哪些表格
SHOW TABLES;
DROP TABLE emp;

-- 数据库操作分为四步：DDL DML DCL DQL
-- DDL
CREATE 
ALTER	
DROP

-- DML
INSERT 
UPDATE	
DELETE

-- 给表插入数据
INSERT INTO emp(id,NAME,gender,birthday,salary,entry_date,RESUME)
VALUE (1,'zhangsan','female','1990-5-10',10000,'2015-5-5-','good girl');
INSERT INTO emp	(id,NAME,gender,birthday,salary,entry_date,RESUME)
VALUE (2,'lisi','male','1995-5-10',10000,'2015-5-5','good boy');

-- 给表中所有人的薪资调整为5000
UPDATE emp SET salary=5000;

-- 给张三的工资调整为3000
UPDATE emp SET salary=3000 WHERE NAME='zhangsan';

-- 将姓名为‘lisi’的人薪资修改为4000，性别改为famale
UPDATE emp SET salary=4000,gender='famale' WHERE NAME='lisi';

-- 将wangwu的薪水在原有基础上增加1000元
UPDATE emp SET salary=salary+1000 WHERE NAME='wangwu';

-- 删除表中姓名为张三的员工的信息记录
DELETE FROM emp WHERE NAME='zhangsan';


-- DQL
SELECT FROM
WHERE 
GROUP BY 
HAVING
ORDER BY
LIMIT

-- 创建实验表格
CREATE TABLE stu(
	sid CHAR(6),
	sname VARCHAR(50),
	age INT,
	gender VARCHAR(50)
);
INSERT INTO stu VALUES('S_1001', 'liuYi', 35, 'male');
INSERT INTO stu VALUES('S_1002', 'chenEr', 15, 'female');
INSERT INTO stu VALUES('S_1003', 'zhangSan', 95, 'male');
INSERT INTO stu VALUES('S_1004', 'liSi', 65, 'female');
INSERT INTO stu VALUES('S_1005', 'wangWu', 55, 'male');
INSERT INTO stu VALUES('S_1006', 'zhaoLiu', 75, 'female');
INSERT INTO stu VALUES('S_1007', 'sunQi', 25, 'male');
INSERT INTO stu VALUES('S_1008', 'zhouBa', 45, 'female');
INSERT INTO stu VALUES('S_1009', 'wuJiu', 85, 'male');
INSERT INTO stu VALUES('S_1010', 'zhengShi', 5, 'female');
INSERT INTO stu VALUES('S_1011', 'xxx', NULL, NULL);

CREATE TABLE emp(
	empno		INT,
	ename		VARCHAR(50),
	job		VARCHAR(50),
	mgr		INT,
	hiredate	DATE,
	sal		DECIMAL(7,2),
	comm		DECIMAL(7,2),
	deptno		INT
);

INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO emp VALUES(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp VALUES(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
INSERT INTO emp VALUES(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO emp VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp VALUES(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30);
INSERT INTO emp VALUES(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO emp VALUES(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO emp VALUES(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO emp VALUES(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp VALUES(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO emp VALUES(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30);
INSERT INTO emp VALUES(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20);
INSERT INTO emp VALUES(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

CREATE TABLE dept(
	deptno		INT,
	dname		VARCHAR(14),
	loc		VARCHAR(13)
);

INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON');


-- 基础查询
-- 查询所有列
SELECT * FROM emp;
SELECT * FROM stu;
SELECT * FROM dept;

-- 查询指定列
SELECT empno,ename,job FROM emp;


-- 查询性别为女，并且年龄小于50的记录
SELECT * FROM stu WHERE age<50;

-- 查询学号为S_1001，或者姓名为liSi的记录
SELECT * FROM stu WHERE	sid='s_1001' OR sname='lisi';

-- 查询年龄为null的记录
SELECT * FROM stu WHERE	age IS NULL;

-- 查询姓名不为null的学生记录
SELECT * FROM stu WHERE sname IS NOT NULL;

-- 模糊查询
-- 查询姓名由5个字母构成的学生记录
SELECT * FROM stu WHERE sname LIKE '_____';

-- 查询姓名以“z”开头的学生记录
SELECT * FROM stu WHERE	sname LIKE 'z%';`

-- 查询emp表中雇员的月薪和奖金之和
SELECT * ,sal+ifnull(comm,0) FROM emp;
