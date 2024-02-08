using ManageEmployee as service from '../../srv/Employee-service';

annotate service.Employee with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Employee ID',
            Value : emp_id,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'ManageEmployee.Resign',
            Label : 'Resign',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'ManageEmployee.Terminate',
            Label : 'Terminate',
        },
        {
            $Type : 'UI.DataField',
            Value : department.dept_name,
            Label : 'Department',
        },
        {
            $Type : 'UI.DataField',
            Value : department.dept_head,
            Label : '{i18n>DepartmentHead}',
        },
        {
            $Type : 'UI.DataField',
            Value : department.dept_loc,
            Label : '{i18n>Location}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Status}',
            Value : status,
            ![@UI.Importance] : #High,
        },
    ]
);
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emp_id',
                Value : emp_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dept_id',
                Value : dept_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dept_name',
                Value : dept_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dept_loc',
                Value : dept_loc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dept_head',
                Value : dept_head,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Employee Overview',
            ID : 'EmployeeMaster',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Employee Details',
                    ID : 'EmployeeDetails',
                    Target : '@UI.FieldGroup#EmployeeDetails',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Department Overview',
            ID : 'DepartmentOverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Department Details',
                    ID : 'DepartmentDetails',
                    Target : '@UI.FieldGroup#DepartmentDetails1',
                },],
        },]
);
annotate service.Employee with @(
    UI.SelectionFields : [
        emp_id,
        status,
    ]
);
annotate service.Employee with {
    emp_id @Common.Label : 'Employee ID'
};
annotate service.Employee with {
    status @Common.Label : '{i18n>Status}'
};
annotate service.Employee with @(
    UI.FieldGroup #EmployeeDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : emp_id,
            },{
                $Type : 'UI.DataField',
                Value : name,
                Label : 'Name',
            },{
                $Type : 'UI.DataField',
                Value : status,
            },{
                $Type : 'UI.DataField',
                Value : dept_name,
                Label : 'Department',
            },],
    }
);
annotate service.Employee with @(
    UI.FieldGroup #DepartmentDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : department.dept_name,
                Label : 'Department',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_id,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_loc,
                Label : 'Location',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_head,
                Label : 'dept_head',
            },],
    }
);
annotate service.Employee with @(
    UI.FieldGroup #DepartmentDetails1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : department.dept_id,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_name,
                Label : 'Name',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_loc,
                Label : 'Location',
            },{
                $Type : 'UI.DataField',
                Value : department.dept_head,
                Label : 'dept_head',
            },],
    }
);
annotate service.Employee with @(
    UI.HeaderInfo : {
        TypeName : 'Employee',
        TypeNamePlural : 'Employees',
        Title : {
            $Type : 'UI.DataField',
            Value : emp_id,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
