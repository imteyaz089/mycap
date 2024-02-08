const cds = require('@sap/cds');

module.exports = cds.service.impl( srv => {

    const{Employee} = srv.entities;

    srv.on('Terminate','Employee', async req => {

        const id = req.params[0].ID;
        const {status} = await SELECT.one(Employee,['status']).where({ID:id});
        if ( status == 'Active'){
            const result = await UPDATE(Employee).set({status:'Terminated'}).where({ID:id});
        }
        else {
            req.error(400,'This action can only be performed on Active employee');
        }
        return Employee;
    });
    srv.on('Resign','Employee', async req => {

        const id = req.params[0].ID;
        const {status} = await SELECT.one(Employee,['status']).where({ID:id});
        if ( status == 'Active'){
            const result = await UPDATE(Employee).set({status:'Resigned'}).where({ID:id});
        }
        else {
            req.error(400,'This action can only be performed on Active employee');
        }
        return Employee;
    });
});