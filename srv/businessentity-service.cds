using demo from '../db/schema';

service BusinessService @(path:'/browse')
{
    entity Supplier as projection on demo.BusinessPartnerEntity 
                            excluding {
                                createdAt, 
                                createdBy, 
                                deliveryCustomerName,
                                deliveryCustomerAddress
                            };
}