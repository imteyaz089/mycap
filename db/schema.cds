namespace imt.empstatus;

using { cuid } from '@sap/cds/common';

entity Employee : cuid {

    emp_id : Integer;
    name   : String(50);
    dept_id : Integer;
    status  : String(20);
    department : Association to one Department on department.dept_id = dept_id;
}

entity Department : cuid {

    dept_id : Integer;
    dept_name : String(20);
    dept_loc  : String(20);
    dept_head : String(50);
    employees : Association to many Employee on employees.department = $self;
}

entity status {
    
    status_id : Integer;
    status    : String(20);
}