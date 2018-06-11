-- day02
SELECT * FROM dept;
SELECT * FROM emp;
SELECT * FROM stu;

-- 字段控制查询

-- 去除emp重复记录
SELECT DISTINCT sal FROM emp;

-- 查看emp雇员的月薪与佣金之和
SELECT ename,sal+IFNULL(comm,0) FROM emp;

-- 给emp列名添加别名
SELECT *,sal+IFNULL(comm,0) FROM emp;

-- 排序
-- 查询所有学生记录，按年龄升序排序
SELECT * FROM stu ORDER	BY age ASC;

-- 查询所有学生记录，按年龄降序排序
SELECT * FROM stu ORDER BY age DESC;

-- 查询所有emp雇员，按月薪降序排序，如果月薪相同时，按编号升序排序
SELECT * FROM emp ORDER BY sal DESC,empno ASC;

-- 聚合函数 sum avg max min count
-- 查询emp表中记录数：
SELECT COUNT(*) FROM emp;

-- 查询emp表中有奖金的人数
SELECT COUNT(comm) FROM emp;

-- 查询emp表中月薪大于2500的人数
SELECT COUNT(*) FROM emp WHERE sal>2500;

-- 统计月薪与佣金之和大于2500元的人数
SELECT COUNT(*) FROM emp WHERE sal+IFNULL(comm,0)>2500;

-- 查询有佣金的人数，以及有领导的人数
SELECT COUNT(comm),COUNT(mgr) FROM emp;

-- 查询所有雇员月薪和
SELECT SUM(sal) FROM emp;

-- 查询所有雇员月薪和，以及所有雇员佣金和
SELECT SUM(sal),SUM(comm) FROM emp;

-- 查询所有雇员月薪+佣金和
SELECT SUM(sal+IFNULL(comm,0)) FROM emp;

-- 统计所有员工平均工资
SELECT AVG(sal) FROM emp;

-- 查询最高工资和最低工资
SELECT MAX(sal) FROM emp;
SELECT MIN(sal) FROM emp;

-- 分组查询
-- 查询每个部门的部门编号和每个部门的工资和
SELECT * FROM emp;
SELECT deptno,SUM(sal) FROM emp GROUP BY deptno;

-- 查询每个部门的部门编号以及每个部门的人数
SELECT deptno,COUNT(*) FROM emp GROUP BY deptno;

-- 查询每个部门的部门编号以及每个部门工资大于1500的人数
SELECT deptno,COUNT(*) FROM emp WHERE sal>1500 GROUP BY deptno;

-- 查询工资总和大于9000的部门编号以及工资和
SELECT deptno,SUM(sal) FROM emp GROUP BY deptno;
SELECT deptno,SUM(sal) FROM emp GROUP BY deptno HAVING SUM(sal)>9000 ;

-- 查询emp表格5行记录，起始行从0开始
SELECT * FROM emp;
SELECT * FROM emp LIMIT 0,5;

-- 查询10行记录，起始行从3开始
SELECT * FROM emp LIMIT 3,10;


-- 数据的完整性
-- 实体完整性: 
-- 域完整性：	
-- 引用完整性：


-- 实体完整性：主键约束(primary key)；唯一约束(unique)；自动增长列(auto_increment)；
CREATE DATABASE mydb2;
-- 主键约束：
CREATE TABLE student(
	id INT PRIMARY KEY,
	NAME VARCHAR(50)
);

DROP TABLE student;

CREATE TABLE student(
	id INT,
	NAME VARCHAR(50),
	PRIMARY KEY (id)
);

CREATE TABLE student(
	classid INT,
	id INT,
	NAME VARCHAR(50),
	PRIMARY KEY (classid,id)
);

CREATE TABLE student(
	classid INT,
	id INT,
	NAME VARCHAR(50)
);

ALTER TABLE student ADD PRIMARY KEY (id);

-- 唯一约束
CREATE TABLE student2(
	id INT,
	NAME VARCHAR(50) UNIQUE
);

INSERT INTO student2(id,NAME) VALUES(1,'zhangsan');
INSERT INTO student2(id,NAME) VALUES(2,'lisi');
INSERT INTO student2(id,NAME) VALUES(3,'zhangsan');

-- 自动增长列
CREATE TABLE student3(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(50)
);


-- 域完整性  数据类型 非空约束（not null） 默认值约束(default)  check约束（mysql不支持）check(sex='男' or  sex='女')
-- 非空约束（not null）默认值约束
CREATE TABLE student4(
	id INT PRIMARY KEY,
	NAME VARCHAR(50) NOT NULL,
	sex VARCHAR(10) DEFAULT 'famale'
);
DROP TABLE student4;

-- 引用完整性 foreing key references 
CREATE TABLE score(
	id INT,
	score INT,
	sid INT,
	CONSTRAINT fk_score_sid FOREIGN KEY(sid) REFERENCES student4(id)
);


-- 多表查询
-- 合并结果集；UNION 、  UNION ALL
-- 连接查询
	-- 内连接  [INNER] JOIN  ON 
	-- 外连接  OUTER JOIN ON
	-- 左外连接 LEFT [OUTER] JOIN
	-- 右外连接 RIGHT [OUTER] JOIN
	-- 全外连接（MySQL不支持）FULL JOIN
	-- 自然连接  NATURAL JOIN
	-- 子查询










