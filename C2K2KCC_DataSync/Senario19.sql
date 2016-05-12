--*****************Scenario No#19
--**********Created By:- Vivek Mamgain
--**********Date:- 01/06/15
--**********************************

--Scenario 19 - Add new Category, Update Category and verify adProgramVersionProgramGroup

--Create New Category version
--1. Goto Lists> Academics records
--2. Enter ACCT in programs tab
--3. Click Program Version button 
--4. Select Campus and click 'Course List' button to add a course list
--5. Click Add Category and enter values in it 3rd year
--6. Verify DB
--505628
select * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where UpdateType='U' and SourceTableName='adProgramCoursecategory' and SourcePrimaryKey=505628 order by 1 Desc
--Select TOP 100 AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) ORDER BY 1 DESCwhere Code='.1542aasba'
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where code='FLBSACC46#'
--Code='42aasba.15'
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID=452674
select top 5 * from c2000_lms..adCourseCategory where code='3rdyr'
select AdProgramGroupID, * from C2000_LMS..adprogramgroup  where descrip LIKE 'aSSOCIATE IN APP%'
select AdProgramGroupID, * from C2000_LMS..adprogramgroup where AdProgramGroupID In (1,99,400,531, 60)
--Test Case Step-3
select  AdProgramVersionProgramGroupID, * from  C2K2KCCIntegration..syn_adProgramVersionProgramGroup With (nolock) where AdProgramGroupID=1 and adProgramVersionId=452674 order by DateAdded desc
select  AdProgramVersionProgramGroupID, * from  C2K2KCCIntegration..syn_adProgramVersionProgramGroup With (nolock) where adProgramVersionId=444658 order by DateAdded desc
--Test Case Step-4
select iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionId =452674

select  * from  KCC.dbo.Program (nolock) where iProgramID =38096


--Update existing category
--Execute queries below

Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code=" & "'" & varProgVerCode & "'"
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=" & varAdProgramVersionID & " and descrip='" & descrip & "'"
select AdProgramGroupID from C2000_LMS..adprogramgroup where descrip='" & varProg & "'"
        select  AdProgramVersionProgramGroupID, * from  C2K2KCCIntegration..syn_adProgramVersionProgramGroup With (nolock) where AdProgramGroupID=" & varAdProgramGroupID & " and adProgramVersionId=" & varAdProgramVersionID & "order by DateAdded desc"
 --Test Case Step-4

        select  iProgramGroupID, * from  C2K2KCCIntegration.dbo.ckmProgramGroup (nolock) where adProgramGroupId = " & varAdProgramGroupID
        
--Test Case Step-5
        select  * from  KCC.dbo.ProgramGroup (nolock) where iProgramGroupId =" & variProgramGrpId
--Test Case Step-6
        select iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionId =" & varAdProgramVersionID
--Test Case Step-7
        select  * from  KCC.dbo.Program (nolock) where iProgramID =" & variProgramId








--*************************real time data

select top(40)* from c2k2kccintegration..c2k2kccqueueErrorLog order by 1 desc
select top(40)* from c2k2kccintegration..c2k2kccqueueHistory order by 1 desc
select * from c2k2kccintegration..c2k2kccqueue

290732304	496437	U	adProgramCourseCategory

select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip='Third Year'

select top(20)* from c2k2kccintegration..c2k2kccqueueErrorLog where QueueSourcePrimarykey in (463134, 463135,463136,496411)
select * from c2k2kccintegration..ckmprogramcourse where adProgramCourseId=444658
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42AASBA.15'
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip like '%Third Year%'

select AdProgramGroupID, * from C2000_LMS..adprogramgroup order by descrip desc
where descrip like '%deficit%' --Third Year



select * from c2000_lms..adProgramCourseCategory where  adProgramCourseCategoryid=496411		
select * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where UpdateType='d' and SourceTableName='adProgramCoursecategory' and SourcePrimaryKey=496436
select * from kcc.dbo.ProgramCategory where icategoryid=12394
select  iCategoryID, * from  C2K2KCCINTEGRATION.dbo.ckmProgramCategory (nolock) where AdProgramCourseCategoryID = 496436
adProgramCourseCategory
adProgramCourseCategory
adProgramCourseCategory
adProgramCourseCategory



--______________________________________________________________----
-- we ae using the following programversionid
--Select top 10 AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where code='42aasba.15'
--444658


select  * from   C2K2KCCIntegration..syn_adProgramVersionProgramGroup With (nolock)  where AdProgramVersionID= 444658 ORDER BY 1 DESC   
--AdProgramVersionProgramGroupID : 691673	adProgramGroupId: 400

select  * from  C2K2KCCIntegration.dbo.ckmProgramGroup (nolock)   where adProgramGroupId = 400
 	
select  * from  KCC.dbo.ProgramGroup (nolock)    where iProgramGroupId = 178 
 
select  * from  KCC.dbo.ckmProgram (nolock)     where adProgramVersionId = 444658

select  * from  KCC.dbo.Program (nolock)    where iProgramID = 33985 


