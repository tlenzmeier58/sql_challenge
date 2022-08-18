-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/9gwrTS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "tbl_employee" (
    "emp_id" serial   NOT NULL,
    "emp_no" int   NOT NULL,
    "emp_title_id" char(5)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(25)   NOT NULL,
    "last_name" varchar(25)   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_tbl_employee" PRIMARY KEY (
        "emp_id"
     )
);

CREATE TABLE "tbl_department" (
    "dept_id" serial   NOT NULL,
    "dept_no" char(4)   NOT NULL,
    "dept_name" varchar(25)   NOT NULL,
    CONSTRAINT "pk_tbl_department" PRIMARY KEY (
        "dept_id"
     )
);

CREATE TABLE "tbl_dept_emp" (
    "dept_emp_id" serial   NOT NULL,
    "empd_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "dept_id" int   NOT NULL,
    "dept_no" char(4)   NOT NULL,
    CONSTRAINT "pk_tbl_dept_emp" PRIMARY KEY (
        "dept_emp_id"
     )
);

CREATE TABLE "tbl_dept_mgr" (
    "dept_mgr_id" serial   NOT NULL,
    "dept_id" int   NOT NULL,
    "dept_no" char(4)   NOT NULL,
    "emp_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_tbl_dept_mgr" PRIMARY KEY (
        "dept_mgr_id"
     )
);

CREATE TABLE "tbl_salaries" (
    "salary_id" serial   NOT NULL,
    "emp_id" int   NOT NULL,
    "emp_no" int   NOT NULL,
    "salary" decimal(12,2)   NOT NULL,
    CONSTRAINT "pk_tbl_salaries" PRIMARY KEY (
        "salary_id"
     )
);

CREATE TABLE "tbl_titles" (
    "title_id" char(5)   NOT NULL,
    "title" varchar(25)   NOT NULL,
    CONSTRAINT "pk_tbl_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "tbl_employee" ADD CONSTRAINT "fk_tbl_employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "tbl_titles" ("title_id");

ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_empd_id" FOREIGN KEY("empd_id")
REFERENCES "tbl_employee" ("emp_id");

ALTER TABLE "tbl_dept_emp" ADD CONSTRAINT "fk_tbl_dept_emp_dept_id" FOREIGN KEY("dept_id")
REFERENCES "tbl_department" ("dept_id");

ALTER TABLE "tbl_dept_mgr" ADD CONSTRAINT "fk_tbl_dept_mgr_dept_id" FOREIGN KEY("dept_id")
REFERENCES "tbl_department" ("dept_id");

ALTER TABLE "tbl_dept_mgr" ADD CONSTRAINT "fk_tbl_dept_mgr_emp_id" FOREIGN KEY("emp_id")
REFERENCES "tbl_employee" ("emp_id");

ALTER TABLE "tbl_salaries" ADD CONSTRAINT "fk_tbl_salaries_emp_id" FOREIGN KEY("emp_id")
REFERENCES "tbl_employee" ("emp_id");

