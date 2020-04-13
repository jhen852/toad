--Con una vista mostrar los nombres de los alumnos y el nombre del curso que estan tomando 

create or replace view vista1
as
    select e.nombre as Estudiante, c.nombre as Curso
    from estudiante e, compra p, curso c
        where e.ci=p.ci and c.id_curso=p.id_curso




select * from vista1;
    
    select * from estudiante;
    
    select * from curso;
    select * from plataforma;
    
    
    
    
--Mostrar en una vista todos los estudiantes que estan inscritos en la plataforma platzi 
create or replace view vista2

as
        select distinct e.nombre , p.nombre as plataforma
            from estudiante e, factura f, plataforma p
            where e.ci=f.CI and p.ID_PLATAFORMA=f.ID_PLATAFORMA and p.nombre='Platzi'

select * from vista2;

create 