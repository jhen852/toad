
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
        dbms_output.put_line(fun1('3 años'));
    end;
    
 
select * from profesor;
--cuantos alumnos certificados tenemos que del curso X
create or replace function fun2(x curso.nombre%type)
return numeric
as 
 var numeric;

    begin
        select count(ce.id_curso) into var
        from certificado ce, curso c
        where ce.id_curso=c.id_curso and c.NOMBRE=x;
        return var;
    end; 
    
begin 
        DBMS_OUTPUT.PUT_LINE('tenemos '||'  '||fun2('Go')|| ' alumnos con certificacion del curso ' );
end;
