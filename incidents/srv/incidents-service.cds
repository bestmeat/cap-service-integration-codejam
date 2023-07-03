using { acme.incmgt } from '../db/schema';
using { s4 } from '../db/customer';

service IncidentsService {
  entity Incidents      as projection on incmgt.Incidents;
  entity Appointments   as projection on incmgt.Appointments;
  entity ServiceWorkers as projection on incmgt.ServiceWorkers;
  entity Customers as projection on s4.simple.Customers;
}

extend incmgt.Incidents with {
  customer : Association to s4.simple.Customers;
}
