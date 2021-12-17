insert into usr (username, password, active)
values ('Admin', '$2a$08$YnFtFbTD.PtlZ7eWvjKOFuhXEJXqMRlRFe9JmIVCMwRzTBQb3vZ/S', true);

insert into user_role (user_id, roles)
values (1, 'ADMIN'),
       (1, 'USER');