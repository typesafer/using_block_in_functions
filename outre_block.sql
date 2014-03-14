DELIMITER $$
DROP FUNCTION IF EXISTS use_of_blocks $$
CREATE FUNCTION use_of_blocks (the_param VARCHAR(10)) RETURNS varchar(10)
    DETERMINISTIC
    outer_block:BEGIN
    declare l_value VARCHAR(10);

    if the_param = 'A' then

       set l_value := 'This was A';

    elseif the_param = 'B' then

       set l_value := 'This was B';

    else

       set l_value := 'Not A or B';

    end if;

    return l_value;
    END outer_block$$
DELIMITER ;
