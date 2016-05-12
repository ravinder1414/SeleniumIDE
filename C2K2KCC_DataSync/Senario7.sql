select  Top(5) * from  C2000_LMS.dbo.adEnroll With (nolock) Where syStudentId = 12105490
Select CONVERT(VARCHAR(10),GETDATE(),102)
select   max(ts) from  C2000_LMS.dbo.adEnroll With (nolock) Where ts Not in (Select max(ts) from C2000_LMS.dbo.adEnroll Where syStudentId = 19298112) And syStudentId = 19298112
select   max(ts) from  C2000_LMS.dbo.adEnroll With (nolock) Where ts In(Select ts from from C2000_LMS.dbo.adEnroll Where syStudentId = 19298112 and EnrollDate = SYSDATETIME ( ))
Select Max(ts) from C2000_LMS.dbo.adEnroll Where syStudentId = 19298112 and EnrollDate =  CONVERT(VARCHAR(10),GETDATE(),102)
select  Top(5) * from  C2000_LMS.dbo.adEnroll With (nolock) where adenrollid in (Select Max(AdEnrollId) from C2000_LMS.dbo.adEnroll Where syStudentId = 19298112)
Select CONVERT(VARCHAR(24),GETDATE(),121)
select  Top(5) * from  C2000_LMS.dbo.adEnroll With (nolock) where DateDiff(minute,DateAdded,CONVERT(VARCHAR(24),GETDATE(),121))
Select DateDiff(minute,DateAdded,CONVERT(VARCHAR(24),GETDATE(),121)) from C2000_LMS.dbo.adEnroll Where syStudentId = 19298112 

Select Top(5) * from C2000_LMS.dbo.systudent Where SyCampusID = 43 and AMMaritalId <> 0 and SyStudentID Not in (Select DISTINCT SyStudentId from C2000_LMS.dbo.adEnroll)
Select Top(5) * from C2000_LMS.dbo.systudent Where SyCampusID = 43 and IsHispanic is Not Null
Select Top(5) * from C2000_LMS.dbo.systudent Where syStudentId=12105490
Select Top(5) * from C2000_LMS.dbo.systudent Where syStudentId=19298112
157893
Select * from c2000_LMS.dbo.adterm where adtermid = 492638

--- AddId - Student ID: - 12105490 - Search and Select the Student.
--Browse to Academics Records - > Enrollment
--Add a Enrollment for the Student - Click on Add Button
--- Use This query to find the program which has iStudentTypeID as 9
Select Top(10) C.iStudentTypeID, A.Code, A.Descrip from C2000_LMS.dbo.adProgramVersion A, KCC.dbo.ckmProgram B, KCC.dbo.Program C 
Where A.AdProgramVersionID = B.adProgramVersionID and B.iProgramID = C.iProgramID
and C.iStudentTypeId=9 and A.Code like '42GCA%'Order by C.dtDateLastChange
--

select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) order by 1 desc
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue Where UpdateType = 'D' order by 1 desc
Select Top(5) * from C2000_LMS.dbo.systudent with (nolock) where syStudentId=12105490
select  Top(50) AdEnrollId, * from  C2000_LMS.dbo.adEnroll With (nolock) where  syStudentId = 12105490 order by DateLstMod desc
select  Top(5) adenrollid from  C2000_LMS.dbo.adEnroll With (nolock) where adenrollid in (Select Max(AdEnrollId) from C2000_LMS.dbo.adEnroll Where syStudentId = 12105490) and DateDiff(minute,DateLstMod,CONVERT(VARCHAR(24),GETDATE(),121)) < 5
select  Top(5) * from  C2000_LMS.dbo.adEnroll With (nolock) where adenrollid in (Select Max(AdEnrollId) from C2000_LMS.dbo.adEnroll Where syStudentId = 12105490) 
select  Top(5) AdEnrollId, EnrollDate, adProgramdescrip, adProgramVersionID, adtermid, dateadded from  C2000_LMS.dbo.adEnroll With (nolock) Where syStudentId = 12105490

--- Enroll ID - 2818789
-- Get Program VesionId and AdTermID -- 446341	492643
select  Top(1) AdEnrollId, EnrollDate, adProgramdescrip, adProgramVersionID, adtermid from  C2000_LMS.dbo.adEnroll With (nolock) where adenrollid in (Select Max(AdEnrollId) from C2000_LMS.dbo.adEnroll Where syStudentId = 12105490) and DateDiff(minute,DateAdded,CONVERT(VARCHAR(24),GETDATE(),121)) < 20
-- Get Degree ID
select  * from  C2000_LMS.dbo.adProgramVersion (nolock)  where AdProgramVersionId = 446341
-- Get Gradution LEvel -- Should be 0 as iStudentTypeID was 9
select  GraduateLevel from  C2000_LMS.dbo.adDegree (nolock)    where AdDegreeID = 79
-- Check Existence in following
select  iStudentid, * from  KCC.dbo.ckmStudent (nolock) where syStudentid = 12105490
select  Top(5) * from  KCC.dbo.Student (nolock)   where iStudentID = '3395931'
select  Top(5) * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionId = 446341
select  vchTitle, iStudentTypeId, * from KCC.dbo.Program (nolock) where iProgramId = 34707
select  Top(1) vchTitle, iStudentTypeId, * from KCC.dbo.Program (nolock) where iStudentTypeid = 9 
select  * from  C2000_LMS.dbo.adProgramVersion (nolock)  where AdProgramVersionId = 446341
select  Top(5) * from  KCC.dbo.ckmProgram (nolock) where iProgramID = 34707

--USe the Adterm Id from above
select  * from  KCC.dbo.ckmCalendarPeriod (nolock)    where adTermID = 492643
select  * from  KCC.dbo.CalendarPeriod (nolock)  where iCalendarPeriodID = 405
-- Verify the Enrollemnt
select *   from kcc.dbo.Student_Program where  istudentid='3395931' and iprogramid=34707 order by dtdatelastChange desc

--- Edit - Edit Enroll Date - Add 3 days and verify the above queries again


---- Delete
select  Top(1) AdEnrollId from  C2000_LMS.dbo.adEnroll Where adEnrollId = 2451924
 select Top (10) *  from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adenroll' and UpdateType = 'D' and SourcePrimaryKey = 2818789
select Top (10) *  from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adenroll' and UpdateType = 'D' Order By 1 Desc
select iStudentProgramID  from kcc.dbo.ckmStudent_Program Where adEnrollId = 2451924
Select * from kcc.dbo.student_Program where iStudentProgramId = 568920
