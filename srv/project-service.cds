using demo from '../db/schema';

service ProjectService @(requires:'authenticated-user')
{
 @(restrict:[{grant:'READ', to:'UsersViewer'},
             {grant: ['READ','CREATE','UPDATE','DELETE'], to:'UsersAdmin'}] )
 entity Users as projection on demo.Users;
 entity Projects as projection on demo.Projects;
}