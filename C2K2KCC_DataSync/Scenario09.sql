--*****************Scenario No#09
--**********Created By:- Puneet Arora
--**********Date:- 01/06/15
--**********************************

--Scenario 09 - Add new Category, Update Category and Delete Category

--Create New program version
--1. Goto Lists> Academics records
--2. Enter ACCT in programs tab
--3. Click Program Version button 
--4. Select Campus and click 'Course List' button to add a course list
--5. Click Add Category and enter values in it
--6. Verify DB
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) Where SourceTableName = 'adProgramCourseCategory' order by 1 desc
select top(10) * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where SourceTableName='adProgramCourseCategory' and SourcePrimaryKey = 505980  order by historydatecreated Desc

--this query is used to fetch AdProgramVersionID which will be used later on
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code like '42aasba.15%'

        
--Test case 1
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID, * from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658
select  top 4 * from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 505639

--Test case 2
select  iProgramID , * from  KCC.dbo.ckmProgram (nolock) where AdProgramVersionID = 444658
--Test case 3
select iProgramID, * from  KCC.dbo.Program (nolock)  where  iProgramID =33985
--Test case 4
Select a.vchCategoryName,c.Descrip From KCC.dbo.ProgramCategory a Inner Join c2k2kccintegration.dbo.ckmProgramCategory  b on a.iCategoryID = b.iCategoryID Inner join c2k2kccintegration..syn_adCourseCategory c on b.AdCourseCategoryID=c.AdCourseCategoryID Where(c.AdCourseCategoryID =171)
--Test case 5
select AdProgramCourseCategoryID , * from  C2k2KCCIntegration.dbo.ckmProgramCategory (nolock)  where AdProgramCourseCategoryID = 505639
--Test case 6
select iCategoryId,iProgramId,tiNbrCredits,tiDisplayOrder,dtCreateDate,dtLastChange,vchCategoryName, * from kcc.dbo.ProgramCategory where icategoryid=16018
select  * from kcc.dbo.ProgramCategory where icategoryid=16018
--Update01 Course Category
--Udpate values for the category created in above scenario
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42aasba.15'
--Test case 1
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip=
select  top 4 * from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 505628
--Test case 2
select * from C2k2KCCIntegration.dbo.ckmProgramCategory (nolock) where AdProgramCourseCategoryID = 505628
--Test case 3
select  iProgramID , * from  KCC.dbo.ckmProgram (nolock) where AdProgramVersionID = 444658
--Test case 4
select iProgramID, * from  KCC.dbo.Program (nolock)  where  iProgramID = 33985
--Test case 5
Select a.vchCategoryName,c.Descrip From KCC.dbo.ProgramCategory a Inner Join c2k2kccintegration.dbo.ckmProgramCategory  b on a.iCategoryID = b.iCategoryID Inner join c2k2kccintegration..syn_adCourseCategory c on b.AdCourseCategoryID=c.AdCourseCategoryID Where(c.AdCourseCategoryID = 170)
--Test case 6
select  AdProgramCourseCategoryID , * from  C2k2KCCIntegration.dbo.ckmProgramCategory (nolock)  where AdProgramCourseCategoryID = 505628
--Test case 7
select iCategoryId,iProgramId,tiNbrCredits,tiDisplayOrder,dtCreateDate,dtLastChange,vchCategoryName from kcc.dbo.ProgramCategory where icategoryid=16011


--Update02 Course Category
--Udpate values for the category created in above scenario
--Test case 1
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42aasba.15'
--Test case 2
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658
Select a.vchCategoryName,c.Descrip From KCC.dbo.ProgramCategory a Inner Join c2k2kccintegration.dbo.ckmProgramCategory  b on a.iCategoryID = b.iCategoryID Inner join c2k2kccintegration..syn_adCourseCategory c on b.AdCourseCategoryID=c.AdCourseCategoryID Where(c.AdCourseCategoryID =170)
--Test case 3
select  * from  C2K2KCCINTEGRATION..syn_adCourseCategory (nolock)  where AdCourseCategoryID =170 

--Remove Course Category
--Remove course category that was created/updated in above steps
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code=" & "'" & varProgVerCode & "'"
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=" & val & " and descrip='" & descrip & "'"
--Test case 1
select  *  from C2000_LMS.dbo.adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID in (select  AdProgramCourseCategoryID from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 171)
--Test case 2
select * from C2000_LMS.dbo.adProgramCourseCategory where adProgramCourseCategoryid=505639
select  iCategoryID, * from  C2K2KCCINTEGRATION.dbo.ckmProgramCategory (nolock) where AdProgramCourseCategoryID = 505639
--Test case 3
select * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where UpdateType='d' and SourceTableName='adProgramCoursecategory' and SourcePrimaryKey=505639
--Test case 4
select * from kcc.dbo.ProgramCategory where icategoryid=16018

---------------------------Real time scenarios
--************************************************

select top(20)* from c2k2kccintegration..c2k2kccqueueErrorLog Where QueueSourceTableName = 'adProgramCourseCategory' order by 1 desc
select top(20)* from c2k2kccintegration..c2k2kccqueueErrorLog Where QueueSourcePrimaryKey = '505979' order by 1 desc
select top(20)* from c2k2kccintegration..c2k2kccqueueHistory Where SourceTableName = 'adProgramCourseCategory' order by 1 desc
select top (20)* from c2k2kccintegration..c2k2kccexecutionsummary order by 1 desc
select top(20)* from c2k2kccintegration..c2k2kccqueue


Select a.vchCategoryName,c.Descrip From KCC.dbo.ProgramCategory a Inner Join c2k2kccintegration.dbo.ckmProgramCategory  b on a.iCategoryID = b.iCategoryID Inner join c2k2kccintegration..syn_adCourseCategory c on b.AdCourseCategoryID=c.AdCourseCategoryID Where(c.AdCourseCategoryID =170)
select * from C2K2KCCINTEGRATION.dbo.vw_JobExecutionSummary where UpdateType='d' and SourceTableName='adProgramCoursecategory' and SourcePrimaryKey=496407
AdProgramCourseCategoryID (460904) not found in ckmProgramCategory
AdProgramCourseCategoryID (460902) not found in ckmProgramCategory
AdProgramCourseCategoryID (460903) not found in ckmProgramCategory

 select  iCategoryID, * from  C2K2KCCINTEGRATION.dbo.ckmProgramCategory (nolock) 
where AdProgramCourseCategoryID = 460902

 select   * from  c2000_lms.dbo.adProgramCourseCategory (nolock) 
where descrip like '%Third Year%'

273168643	273175191
496407	D	adProgramCourseCategory
select top(20)* from c2k2kccintegration..c2k2kccqueueErrorLog 
where --queuesourcetablename='adProgramCourseCategory' --order by logDatecreated desc
-- and 
queuesourceprimarykey=496408 


select  *  from C2000_LMS.dbo.adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID in (select  AdProgramCourseCategoryID from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 460902)
select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip='Third Year'
Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42AASBA.15'

select  AdProgramCourseCategoryID , * from  C2k2KCCIntegration.dbo.ckmProgramCategory (nolock)  where AdProgramCourseCategoryID = 496408
select * from c2k2kccintegration..c2k2kccqueue order by datecreated desc

select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip='Third Year'
select  top 4 * from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 496408
select * from C2k2KCCIntegration.dbo.ckmProgramCategory (nolock) where AdProgramCourseCategoryID = 496408
select  *  from C2000_LMS.dbo.adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID in (select  AdProgramCourseCategoryID from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = )

select  *  from C2000_LMS.dbo.adCourseCategory With (nolock) where AdCourseCategoryID in (select  AdCourseCategoryID from  C2K2KCCIntegration..syn_adCourseCategory (nolock)    where AdCourseCategoryID =170)


Select AdProgramVersionID, * from  C2K2KCCIntegration..syn_adProgramVersion With (nolock) where Code='42AASBA.15'

select AdCourseCategoryID, AdProgramCourseCategoryID, AdProgramCourseCategoryID from c2000_lms..adProgramCourseCategory where AdProgramVersionID=444658 and descrip='Third Year'
select  *  from C2000_LMS.dbo.adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID in (select  AdProgramCourseCategoryID from  C2K2KCCIntegration..syn_adProgramCourseCategory With (nolock) where AdProgramCourseCategoryID = 496408)
select  *  from C2000_LMS.dbo.adCourseCategory With (nolock) where AdCourseCategoryID in (select  AdCourseCategoryID from  C2K2KCCIntegration..syn_adCourseCategory (nolock)    where AdCourseCategoryID =170)
select  iCategoryID, * from  C2K2KCCINTEGRATION.dbo.ckmProgramCategory (nolock) where AdProgramCourseCategoryID = 496408
select  *  from C2000_LMS.dbo.adCourseCategory With (nolock) where AdCourseCategoryID in (select  AdCourseCategoryID from  C2K2KCCIntegration..syn_adCourseCategory (nolock)    where AdCourseCategoryID =170)
select  *  from C2000_LMS.dbo.adCourseCategory With (nolock) where AdCourseCategoryID =170
select * from c2k2kccintegration..c2k2kccqueue WHERE UPDatetype='i' order by datecreated desc