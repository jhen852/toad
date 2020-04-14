--Mostrar a los 5 primeros profesores con mayor experiencia
declare
nm varchar2(50); 
nc varchar2(50); 
    cursor cr1 is
        select p.nombre, p.experiencia
        from profesor p order by p.experiencia desc;
          
   begin
    
        open cr1;
            for i in 1..5 loop
               fetch cr1 into nm, nc;
                exit when cr1%notfound;
                dbms_output.put_line(nm||'los años  '||nc);
                commit;
            end loop;
        close cr1;
   end;
 
--crear un cursor de cuantos mienbros del equipo tiene cada jefe de trabajo
 create or replace procedure cr2 (x jefetrab.nombre%type)
 as
      cursor cr3
      is
            select j.nombre , s.NRO_INTEGRANTES
                from jefetrab j, equipotrab s
                    where j.ID_EQUIPO= s.ID_EQUIPO and j.nombre=x;

begin 
       for reg in cr3 loop
            dbms_output.put_line(reg.nombre||'  Tiene '||reg.nro_integrantes ||'integrantes en su equipo de trabajo');
       end loop;
       
end;
            

    begin
            cr2('NICOLAS ALCAZAR HERAS');
    end;
