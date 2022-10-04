create database `sprint1`;
use `sprint1`;

create table if not exists `account` (
	account_id bigint primary key auto_increment,
    username varchar(20) unique not null,
    `password` varchar(255) not null,
    account_flag boolean default 0
);
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983111111', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983222222', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983333333', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983444444', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983555555', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983666666', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983777777', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983888888', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983999999', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');
INSERT INTO `sprint1`.`account` (`username`, `password`) VALUES ('0983000000', 'vhga65tQgga+rlGKUKAxTJEmnDqOePeQ+0+Y3vOgLwo=');


create table if not exists `role` (
	role_id bigint primary key auto_increment,
    role_name varchar(30),
    role_flag boolean default 0
);
INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_ADMIN');
INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_ACCOUNTANT');
INSERT INTO `sprint1`.`role` (`role_name`) VALUES ('ROLE_SELL');


create table if not exists account_role (
	account_role_id bigint primary key auto_increment,				
	account_id bigint not null,				
	role_id bigint not null,				
    account_role_flag boolean default 0,
	foreign key (account_id) references `account`(account_id) on update cascade,				
	foreign key (role_id) references `role` (role_id) on update cascade	 			
);
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('2', '1');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('3', '2');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('4', '2');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('5', '2');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('6', '2');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('7', '3');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('8', '3');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('9', '3');
INSERT INTO `sprint1`.`account_role` (`account_id`, `role_id`) VALUES ('10', '3');


create table if not exists customer_type (
	customer_type_id bigint primary key auto_increment,
    customer_type_name varchar(50) unique not null,
    customer_type_flag boolean default 0
);
INSERT INTO `sprint1`.`customer_type` (`customer_type_name`) VALUES ('khách hàng sỉ');
INSERT INTO `sprint1`.`customer_type` (`customer_type_name`) VALUES ('khách hàng lẻ');
INSERT INTO `sprint1`.`customer_type` (`customer_type_name`) VALUES ('nhà cung cấp');


create table if not exists material_type (
	material_type_id bigint primary key auto_increment,
    material_name varchar(20) not null,
    material_type_flag boolean default 0
); 	
INSERT INTO `sprint1`.`material_type` (`material_name`) VALUES ('vật tư cũ');
INSERT INTO `sprint1`.`material_type` (`material_name`) VALUES ('vật tư mới');
	
			

create table if not exists position (
	position_id bigint primary key auto_increment,
    position_name varchar(50) not null,
    position_flag boolean default 0
);
INSERT INTO `sprint1`.`position` (`position_name`) VALUES ('quản lý');
INSERT INTO `sprint1`.`position` (`position_name`) VALUES ('kế toán');
INSERT INTO `sprint1`.`position` (`position_name`) VALUES ('bán hàng');



create table if not exists customer(						
	customer_id bigint primary key auto_increment,						
	customer_name varchar(50) not null,						
	customer_code varchar(10) not null,						
	customer_avatar varchar(255),						
	customer_address varchar(60),						
	customer_phone varchar (20),						
	customer_email varchar (50) not null,
    customer_flag boolean default 0,
	customer_type_id bigint not null,						
	foreign key (customer_type_id) references customer_type (customer_type_id) on update cascade						
);	
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn A', 'MKH-001', 'avatar1', 'Đà Nẵng', '0905111111', 'NguyenVanA@gmail.com', '1');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn B', 'MKH-002', 'avatar2', 'Quảng Nam', '0905222222', 'NguyenVanB@gmail.com', '1');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn C', 'MKH-003', 'avatar3', 'Đà Nẵng', '0905333333', 'NguyenVanC@gmail.com', '2');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn D', 'MKH-004', 'avatar4', 'Quảng Nam', '0905444444', 'NguyenVanD@gmail.com', '2');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn E', 'MKH-005', 'avatar5', 'Đà Nẵng', '0905555555', 'NguyenVanE@gmail.com', '2');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Nguyễn Văn F', 'MKH-006', 'avatar6', 'Huế', '0905666666', 'NguyenVanF@gmail.com', '2');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Công ty Lan Anh', 'MKH-007', 'avatar7', 'Đà Nẵng', '0905777777', 'CongTyLanAnh@gmail.com', '3');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Công ty Hải Dương', 'MKH-008', 'avatar8', 'Huế', '0905888888', 'CongTyHaiDuong@gmail.com', '3');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Công ty Viết Huy', 'MKH-009', 'avatar9', 'Đà Nẵng', '0905999999', 'CongTyVietHuy@gmail.com', '3');
INSERT INTO `sprint1`.`customer` (`customer_name`, `customer_code`, `customer_avatar`, `customer_address`, `customer_phone`, `customer_email`, `customer_type_id`) VALUES ('Công ty Thanh Thắng', 'MKH-010', 'avatar10', 'Huế', '0905000000', 'CongTyThanhThang@gmail.com', '3');


create table if not exists employee(
	employee_id bigint primary key auto_increment,
    employee_code varchar(10) not null,
    employee_name varchar(50) not null,
    employee_avatar varchar(255),
    employee_date_of_birth date,
    employee_gender varchar(20), 
    employee_address varchar(60),
    employee_phone varchar(20),
    employee_salary double,
    employee_flag boolean default 0,
    employee_account_id bigint unique not null,
    employee_position_id bigint not null,
    foreign key (employee_account_id) references `account` (account_id) on update cascade,
    foreign key (employee_position_id) references position (position_id) on update cascade
);
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-001', 'Lê Văn A', 'avatar1', '1990-01-01', 'Nam', 'Quảng Nam', '0983111111', '1000', '1', '1');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-002', 'Lê Văn B', 'avatar2', '1991-02-02', 'Nữ', 'Đà Nẵng', '0983222222', '5000', '2', '1');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-003', 'Lê Văn C', 'avatar3', '1992-03-03', 'Khác', 'Quảng Nam', '0983333333', '3000', '3', '2');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-004', 'Lê Văn D', 'avatar4', '1993-04-04', 'Nam', 'Đà Nẵng', '0983444444', '4000', '4', '2');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-005', 'Lê Văn E', 'avatar5', '1994-05-05', 'Nữ', 'Quảng Nam', '0983555555', '6000', '5', '2');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-006', 'Lê Văn F', 'avatar6', '1995-06-06', 'Khác', 'Đà Nẵng', '0983666666', '7000', '6', '2');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-007', 'Lê Văn G', 'avatar7', '1996-07-07', 'Nam', 'Huế', '0983777777', '9000', '7', '3');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-008', 'Lê Văn H', 'avatar8', '1997-08-08', 'Nữ', 'Đà Nẵng', '0983888888', '10000', '8', '3');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-009', 'Lê Văn I', 'avatar9', '1998-09-09', 'Khác', 'Huế', '0983999999', '500', '9', '3');
INSERT INTO `sprint1`.`employee` (`employee_code`, `employee_name`, `employee_avatar`, `employee_date_of_birth`, `employee_gender`, `employee_address`, `employee_phone`, `employee_salary`, `employee_account_id`, `employee_position_id`) VALUES ('MNV-010', 'Lê Văn J', 'avatar10', '1999-10-10', 'Nam', 'Đà Nẵng', '0983000000', '8500', '10', '3');



create table if not exists salary (							
	salary_id bigint primary key auto_increment,					
	salary_advance_payment double default 0,
    salary_flag boolean default 0,
	salary_employee_id bigint not null,					
	foreign key(salary_employee_id) references employee(employee_id) on update cascade					
);
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('100', '3');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('300', '4');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('500', '5');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('0', '6');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('0', '6');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('200', '5');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('0', '4');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('0', '3');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('800', '3');
INSERT INTO `sprint1`.`salary` (`salary_advance_payment`, `salary_employee_id`) VALUES ('0', '4');					

create table if not exists material (
	material_id bigint auto_increment primary key ,
	material_code varchar(20) not null,
	material_name varchar(50) not null,
	material_price double not null,
	material_expiridate date not null,
    material_image varchar(255),
	material_describe varchar(255),
    material_flag boolean default 0,
    material_unit varchar(20) not null,
	material_type_id bigint not null,
    material_customer_id bigint not null,
	foreign key (material_type_id) references material_type(material_type_id) on update cascade,
    foreign key (material_customer_id) references customer(customer_id) on update cascade
);
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-001', 'Bông ', '5000', '2021-01-01', 'image1', 'describe1', 'chai', '1', '7');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-002', 'Dung dịch', '1000', '2021-02-02', 'image2', 'describe2', 'chai', '1', '8');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-003', 'Dụng cụ', '1000', '2021-03-03', 'image3', 'describe3', 'cái', '1', '9');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-004', 'Thuốc', '2000', '2021-04-04', 'image4', 'describe4', 'gói', '1', '10');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-005', 'Khẩu trang', '1000', '2021-05-05', 'image5', 'describe5', 'gói', '1', '7');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-006', 'Bông ', '5000', '2022-01-01', 'image6', 'describe6', 'chai', '2', '8');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-007', 'Dung dịch', '1000', '2022-02-02', 'image7', 'describe7', 'chai', '2', '9');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-008', 'Dụng cụ', '1000', '2022-03-03', 'image8', 'describe8', 'cái', '2', '10');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-009', 'Thuốc', '2000', '2022-04-04', 'image9', 'describe9', 'gói', '2', '9');
INSERT INTO `sprint1`.`material` (`material_code`, `material_name`, `material_price`, `material_expiridate`, `material_image`, `material_describe`, `material_unit`, `material_type_id`, `material_customer_id`) VALUES ('MVT-010', 'Khẩu trang', '1000', '2022-05-05', 'image10', 'describe10', 'gói', '2', '10');



create table if not exists cart (					
	cart_id bigint primary key auto_increment,					
	cart_amount int not null,					
	cart_total_money double not null,					
    cart_flag boolean default 0,
	cart_account_id bigint not null,					
	cart_customer_id bigint not null,
	foreign key (cart_customer_id) references customer(customer_id) on update cascade,					
	foreign key (cart_account_id) references `account`(account_id) on update cascade
);
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('1', '1000', '7', '1');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('2', '2000', '8', '2');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('3', '3000', '9', '3');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('4', '4000', '10', '4');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('5', '5000', '10', '5');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('5', '5000', '9', '6');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('4', '4000', '8', '6');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('3', '3000', '7', '5');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('2', '2000', '6', '1');
INSERT INTO `sprint1`.`cart` (`cart_amount`, `cart_total_money`, `cart_account_id`, `cart_customer_id`) VALUES ('1', '1000', '7', '2');

					

create table if not exists cart_material (					
	cart_material_id bigint primary key auto_increment,					
	cart_id bigint not null,					
    cart_material_flag boolean default 0,
	material_id bigint not null,					
	foreign key(cart_id) references cart(cart_id) on update cascade,					
	foreign key(material_id) references material(material_id) on update cascade					
);	
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('1', '1');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('2', '2');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('3', '3');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('4', '4');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('5', '5');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('6', '1');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('7', '2');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('8', '3');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('9', '4');
INSERT INTO `sprint1`.`cart_material` (`cart_id`, `material_id`) VALUES ('10', '5');
				

create table if not exists `import` (
	import_id bigint primary key auto_increment, 
	import_code varchar(10) not null, 
	import_start_date date,
	import_quantity int,
    import_flag boolean default 0,
	import_employee_id bigint not null,
	import_material_id bigint not null,
	foreign key (import_employee_id) references employee (employee_id) on update cascade,
	foreign key (import_material_id) references material (material_id) on update cascade
);	
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-001', '2022-01-01', '5', '1', '6');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-002', '2022-02-02', '4', '2', '7');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-003', '2022-03-03', '3', '1', '8');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-004', '2022-04-04', '2', '2', '9');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-005', '2022-05-05', '1', '1', '10');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-006', '2022-06-06', '1', '2', '10');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-007', '2022-07-07', '2', '1', '9');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-008', '2022-08-08', '3', '2', '8');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-009', '2022-09-09', '4', '1', '7');
INSERT INTO `sprint1`.`import` (`import_code`, `import_start_date`, `import_quantity`, `import_employee_id`, `import_material_id`) VALUES ('MHD-010', '2022-10-10', '5', '2', '6');


create table if not exists bill_output (
	bill_output_id bigint primary key auto_increment , 
	bill_output_date date, 
    bill_output_flag boolean default 0,
	bill_output_employee_id bigint not null,
	bill_output_customer_id  bigint not null,
	foreign key (bill_output_employee_id) references employee (employee_id) on update cascade,
	foreign key (bill_output_customer_id) references customer (customer_id) on update cascade
);
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-02-02', '1', '7');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-03-03', '2', '8');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-04-04', '1', '9');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-05-05', '2', '10');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-06-06', '1', '7');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-07-07', '2', '8');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-08-08', '1', '9');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-09-09', '2', '10');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-10-10', '1', '7');
INSERT INTO `sprint1`.`bill_output` (`bill_output_date`, `bill_output_employee_id`, `bill_output_customer_id`) VALUES ('2022-11-11', '2', '8');

				

create table if not exists bill_output_material(
	bill_output_material_id bigint auto_increment primary key,
    bill_output_material_quantity int,
    bill_output_material_flag boolean default 0,
    bill_output_id bigint not null, 
	material_id bigint not null, 
	foreign key (bill_output_id) references bill_output(bill_output_id) on update cascade,
	foreign key (material_id) references material(material_id) on update cascade
);	
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('1', '1', '7');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('2', '2', '8');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('3', '3', '9');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('4', '4', '10');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('5', '5', '7');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('5', '6', '8');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('4', '7', '9');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('3', '8', '10');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('2', '9', '7');
INSERT INTO `sprint1`.`bill_output_material` (`bill_output_material_quantity`, `bill_output_id`, `material_id`) VALUES ('1', '10', '8');	