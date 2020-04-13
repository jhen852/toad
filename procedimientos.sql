create or replace procedure proced(x plataforma.nombre%type)

as
begin
       for reg in(
            select  distinct e.nombre 
            from estudiante e , plataforma p, factura f
            where f.ID_PLATAFORMA=p.ID_PLATAFORMA and f.CI=e.CI and p.nombre= x )
            
            loop
                dbms_output.put_line(reg.nombre);
            end loop;       
end;

begin
    proced('Platzi'); 
end;

create or replace procedure proced2(x curso.nombre%type )
as 

    begin
          for reg in(
                select avg(s.edad) as part
                from estudiante s, curso c, compra m
                    where m.ID_CURSO=c.ID_CURSO and s.CI=m.CI and c.NOMBRE= x
          )
          loop
              dbms_output.put_line(reg.part);
          end loop;
    end;
    
    begin 
           proced2('Php');
    end;