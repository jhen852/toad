
--cuantos profesores tenemos con experiencia x
create or replace function fun1(x profesor.experiencia%type)
return number
as
  var numeric;
  
  begin
    select count(nombre) into var
    from profesor  
    where  experiencia=x;
    return var;
    end;
    
    begin 
        dbms_output.put_line(fun1('2 años'));
    end;
    
 
select * from profesor;