using { API_BUSINESS_PARTNER } from '../srv/external/API_BUSINESS_PARTNER';

namespace s4.simple;

@cds.persistence.table
entity Customers as projection on API_BUSINESS_PARTNER.A_BusinessPartner {
  key BusinessPartner as ID,
  BusinessPartnerFullName as name
} where BusinessPartnerCategory = '2';
