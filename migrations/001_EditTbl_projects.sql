ALTER TABLE tbl_projects
ADD description text,
ADD status int(11) NOT NULL DEFAULT '0',
ADD start_date date,
ADD project_cost decimal(11,2) DEFAULT NULL;
