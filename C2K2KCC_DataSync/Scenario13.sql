select  Top(5) * from  C2000_LMS.dbo.adCourse With (nolock)  where Code like 'AUTOSTAGE'
select adcourseid, Code, Descrip from  C2000_LMS.dbo.adCourse With (nolock)  where Code = 'AUTOSTAGE'

select Top(5) * from C2000_LMS.dbo.adCourse c join C2000_LMS.dbo.adCourseAttribute  ca 
        on  c.adCourseId =  ca.adCourseId join C2000_LMS.dbo.AdAttribute A on  ca.adAttributeId = a.adAttributeId 
  and A.code = 'BOOK-SHIP' where c.adCourseId = 508649

select * from  KCC.dbo.CKMCourse (nolock)    where adCourseID = 508649
select *from kcc.dbo.course where icourseid=4742

select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) order by 1 desc
-- Delete Course
select  Top(5) * from  C2000_LMS.dbo.adCourse With (nolock)  where Code = 'AUTOSTAGE'
select * from  KCC.dbo.CKMCourse (nolock)    where adCourseID = 508649
select *from kcc.dbo.course where icourseid=4740
select Top(10)* from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adCourse' and UpdateType = 'D' and SourcePrimaryKey = 508649