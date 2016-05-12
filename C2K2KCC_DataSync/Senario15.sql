--*****************Scenario No#15
--**********Created By:- Puneet Arora
--**********Date:- 01/06/15
--**********************************

--Scenario 15 - Add new course, Update course and Delete course

--Create New program version
--1. Goto Lists> Academics records
--2. Enter ACCT in programs tab
--3. Click Program Version button 
--4. Select Campus and click 'Course List' button to add a course list
--5. Select a Course category
--6. Click Add Course button
--7. Fill data for Course
--8. Save button click on Add Course window
--9. DB varification
754753
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) Where SourceTableName='adProgramCourse'order by 1 desc
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueueHistory (nolock) Where SourceTableName='adProgramCourse'and SourcePrimaryKey = 756951 order by 1 desc
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueueErrorLog (nolock) Where QueueSourceTableName='adProgramCourse'and QueueSourcePrimaryKey = 756951 order by 1 desc
select top(10) * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where SourceTableName='adProgramCourse' order by 1 Desc
select top(10) * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where UpdateType='D' and SourceTableName='adProgramCourse' and SourcePrimaryKey = 756952  order by historydatecreated Desc

select adProgramCourseID, * from  C2K2KCCIntegration..syn_adProgramCourse (nolock)  where AdProgramCourseCategoryID IN (select  adProgramCourseCategoryId from C2K2KCCIntegration.dbo.ckmProgramCategory(nolock)) and AdProgramVersionID = 446789
select a.adProgramCourseID from   a C2K2KCCIntegration..syn_adProgramCourse, b C2K2KCCIntegration.dbo.ckmProgramCategory (nolock)  where a.AdProgramVersionID = 444658 and a.AdProgramCourseCategoryID = b.adProgramCourseCategoryId
select  adProgramCourseCategoryId from C2K2KCCIntegration.dbo.ckmProgramCategory(nolock)  where adProgramCourseCategoryId = 505628 40263
select adProgramCourseID, AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramCourse (nolock)  where AdProgramCourseCategoryID=505628
Select AdDegreeId, AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where AdProgramVersionID=448532
select  adProgramCourseCategoryId, *  from C2K2KCCIntegration.dbo.ckmProgramCategory(nolock) Where AdProgramCourseCategoryID = 446789
--Step-1
Select AdDegreeId, AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='ARAASBA.26'
--Step-2
Select AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID=446789
--Step-3
Select adCourseCategoryId, * from c2000_lms..adCourseCategory where code='CORE'
Select adCourseCategoryId, * from c2000_lms..adCourseCategory 
--step-4
select adProgramCourseID, * from  C2K2KCCIntegration..syn_adProgramCourse (nolock)  where AdProgramVersionID = 446789 and AdProgramCourseCategoryID=486508
--step-5
select  * from  C2k2KCCINTEGRATION.dbo.CKMProgramCourse(nolock) where  adProgramCourseId=754799
--step-6
select  iCategoryID, * from C2K2KCCIntegration.dbo.ckmProgramCategory(nolock)  where adProgramCourseCategoryId = 486508
--step-7
select  * from KCC.dbo.ProgramCategory with (nolock) where iCategoryID =5886
--step-8
select  iProgramID, * from KCC.dbo.ckmProgram with (nolock) where adProgramVersionID=446789
--step-9
select  * from KCC.dbo.ckmProgram with (nolock) where iProgramID= 34920
--step-10
select  AdCourseID, * From C2K2KCCIntegration..syn_adCourse with (nolock) where adCourseId in (select adCourseId from C2K2KCCIntegration..syn_adProgramCourse where AdProgramVersionID = 446789 and adProgramCourseCategoryId =486508)
--step-11
select iCourseID, * from  kcc.dbo.ckmCourse(nolock)   where adCourseId in (select adCourseId from C2K2KCCIntegration..syn_adProgramCourse where AdProgramVersionID = 446789 and adProgramCourseCategoryId =486508 and AdCourseID =504001)
--step-12
select  * from KCC.dbo.Course with (nolock) where iCourseID = 3400
--step-13
select adprogramid, * From C2K2KCCIntegration..syn_adProgramversion with (nolock) where adprogramversionid = 446789
--step-14
select  siSchoolId, * from C2K2KCCIntegration.dbo.ckmSchool with (nolock) where AdProgramId = 60 and addegreeid=16
--step-15
select  * from   KCC.dbo.School with (nolock) where siSchoolID = 40
--step-16
Select iRequirementId, * from KCC.dbo.ProgramRequirement where iCategoryID= 5886  and iProgramID=34920 order by 1 desc 
Select * from C2K2KCCIntegration.dbo.CKMProgramCourse  where adProgramCourseId =754799
Select * from KCC.dbo.ProgramRequirement_Course where iRequirementID =82490
Select * from KCC.dbo.Course_School where  siSchoolID = 40 and  iCourseID =3400

--Update the above Added Course 
--Execute all the above queries executed during the Add Course

--Remove the added/updated course
--Run DB queries
     -----Step-3
select  *  from C2000_LMS.dbo.adProgramCourse With (nolock) where adProgramCourseID in (select  adProgramCourseID from  C2k2kccintegration..syn_adProgramCourse (nolock) where adProgramCourseID=754799)
-----Step-4
select  * from  C2k2KCCINTEGRATION.dbo.CKMProgramCourse  (nolock) where adProgramCourseId = 754799
-----Step-5
select * from c2k2kccintegration.dbo.vw_JobExecutionSummary where UpdateType='d' and SourceTableName='adProgramCourse' and SourcePrimaryKey=754799
-----Step-6
select iCategoryID, *  from KCC.dbo.ProgramRequirement where iRequirementId in (select  iRequirementId from  C2k2KCCINTEGRATION.dbo.CKMProgramCourse (nolock)where adProgramCourseId =
select *  from KCC.dbo.Course_School where iCourseID=
select * from KCC.dbo.ProgramRequirement where iCategoryID=
          

--***********************************Real time data


select top(40)* from c2k2kccintegration..c2k2kccqueueErrorLog order by 1 desc
select top(100)* from c2k2kccintegration..c2k2kccqueueHistory order by 1 desc
select * from c2k2kccintegration..c2k2kccqueue order by 1 desc


290732110	496435	U	adProgramCourseCategory
290732109	696128	D	adProgramCourse


select * from c2k2kccintegration..ckmProgramCategory where adProgramCourseCategoryId =460902


Select AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip='A-T1'

select  * from  C2k2KCCINTEGRATION.dbo.CKMProgramCourse(nolock) where  adProgramCourseId= 695746
select adProgramCourseID, * from  C2K2KCCIntegration..syn_adProgramCourse (nolock)  where AdProgramVersionID =444658 and AdProgramCourseCategoryID=460902



Select AdDegreeId, AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42AASBA.15'
Select AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID= 444658 and descrip like '%Core Requirements%'
Select adCourseCategoryId, * from c2000_lms..adCourseCategory where code='CORE'
select adProgramCourseID, * from  C2K2KCCIntegration..syn_adProgramCourse (nolock)  where AdProgramVersionID =444658 and AdProgramCourseCategoryID=460902


select  * from  C2k2KCCINTEGRATION.dbo.CKMProgramCourse(nolock) where  adProgramCourseId= 695746


