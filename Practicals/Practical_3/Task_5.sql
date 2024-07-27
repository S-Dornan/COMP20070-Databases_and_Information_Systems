CREATE TABLE `mydb`.`employee` (
`emp#` INT Primary key,
`firstname` VARCHAR(20) NOT NULL,
`surname` VARCHAR(20) NOT NULL,
`salary` INT default 0,
`city` varchar(20),
unique(firstname,surname));