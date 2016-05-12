select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) Where SourceTableName='adProgramCourse'order by 1 desc
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock)  order by 1 desc


--Scenario 01
--Getting the last modified date from the database -- 2013-06-19 19:44:43.233, 31, 
Select City, DateLstMod, email, AdshiftId  from C2000_LMS.dbo.systudent (nolock) where systudentid = 17714888
--Getting the last modified date from the database -- 2009-08-12 09:35:01.000
select DateLstMod from C2000_LMS.dbo.adshift where adshiftid = 31
--
select Top(10) a.ADShiftID, b.Descrip from C2000_LMS..syStudent a inner join c2000_LMS..syCountry b on a.sycountryid=b.sycountryid  where a.syStudentID ='17714888'
--Updated the City for the Student in CampusVue
-- Verify the Date Last Modified and City Updated
Select City, DateLstMod, email, AdshiftId  from C2000_LMS.dbo.systudent (nolock) where systudentid = 17714888
-- Verify the Date Last Modified in CKM Student
select dtDateModified, iStudentId from  KCC.dbo.CKMSTUDENT (nolock) where systudentid = 17714888
-- Verify the Date Last Modified in KCC Student
select dtDateLastChange, * from KCC.dbo.Student where iStudentid = 3045413
-- Verify the Date Last Modified and City Updated
select vchCity, vchCountry, dtDateLastchange from KCC.dbo.StudentProfile (nolock) where iStudentid =3045413 
-- Verify the Date Last Modified in KCC Student Track
select dtDateLastModified, * from KCC.dbo.StudentTrack  where iStudentid = 3045413

select * from c2k2kccintegration.dbo.c2k2kccQueue

select top 50 * from c2k2kccintegration.dbo.c2k2kccQueueHistory Where SourceTablename='systudent' and sourceprimarykey =155075 order by 1 desc
select top 30 * from c2k2kccintegration.dbo.C2k2KCCQueueErrorLog Where QueueSourceTablename='systudent' order by 1 desc

