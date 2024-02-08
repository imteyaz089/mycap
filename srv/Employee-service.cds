using imt.empstatus as my from '../db/schema';

service ManageEmployee {

    @odata.draft.enabled
    entity Employee as projection on my.Employee {
        *, department.dept_name,department.dept_loc,department.dept_head
    } actions {
        action Terminate() returns Employee;
        action Resign() returns Employee;
    };
    entity Department as projection on my.Department;
    entity Status as projection on my.status;

}