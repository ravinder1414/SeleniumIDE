--*****************Scenario No#04
--**********Created By:- Puneet Arora
--**********Date:- 01/06/15
--**********************************

--Scenario 04 - Add new program version, Update Program Version and Delete Program Version

--Create New program version
--1. Goto Lists> Academics records
--2. Enter ACCT in programs tab
--3. Click Program Version button 
--4. Select Campus and click Add button to add a program version
--5. Enter values in Program Version window, make sure you select Degree asBachelor of Science or Master of Science (Issue - Combination of AdProgramId (60)  & AdDegreeID (66)  not found in ckmSchool)
--6. Verify DB
--adProgramVersionProgramGroup
--adProgramVersionProgramGroup
--adProgramVersion
select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) order by 1 desc
select Top (10) *  from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where SourceTableName = 'adProgramVersion' and UpdateType IN ('I','U')  Order By 1 Desc
--Test case 1
select AdProgramVersionID,adProgramGroupId , AdProgramId, AdDegreeID, * from c2k2kccintegration..syn_adProgramVersion With (nolock) where code = 'AUTO_PA'
--452030
--Test case 2
Select adProgramGroupId, Descrip, * from c2000_lms..adProgramGroup where code = 'B' order by DateAdded Desc 


--Test case 3
select * from KCC.dbo.ProgramGroup (nolock) where iProgramGroupId = 1

--Test case 4
select siSchoolID, *  from  C2K2KCCIntegration.dbo.ckmSchool (nolock)   where AdProgramId = 60
Select * from c2000_LMS..adDegree where AdDegreeId IN (10,16,25,9,79,67)
--Test case 5
select siSchoolID from KCC.dbo.School (nolock) where siSchoolID = 16
--Test case 6
select GraduateLevel, * from  C2K2KCCIntegration..syn_adDegree (nolock) where AdDegreeID = 25 
--Test case 7
select  ckmDegreeTypeID, tiProgramType  from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock)   where adDegreeID =25
--Test case 8
select  tiProgramType from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock) where ckmDegreeTypeID = 9
--Test case 9

select  * from  KCC.dbo.ProgramType (nolock) where tiProgramType = 1
--Test case 10
Select  * from  KCC.dbo.Calendar (nolock)   where iCalendarID = 1
--Test case 11
select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 452030

--Test case 12
select * from KCC.dbo.Program where iProgramID = 37829
select * from  KCC.dbo.ckmProgram where adProgramVersionID = 452030 and iProgramID=37829

--============*************************
--**************************************
--**************************************
--Update Program Version
--Update the above created program version by changing names and other details, mentioned in code
--Verify DB

--Test case 1
select AdProgramVersionID,adProgramGroupId , AdProgramId, AdDegreeID, * from c2k2kccintegration..syn_adProgramVersion With (nolock) where code = 'AutoStage'

--Test case 2
Select adProgramGroupId, Descrip, * from c2000_lms..adProgramGroup where code = 'B' order by DateAdded Desc 
Select  iProgramGroupId from  C2K2KCCIntegration.dbo.ckmProgramGroup (nolock) where adProgramGroupId = 1

--Test case 3
select * from KCC.dbo.ProgramGroup (nolock) where iProgramGroupId = 1

--Test case 4
select siSchoolID, *  from  C2K2KCCIntegration.dbo.ckmSchool (nolock)   where AdProgramId = 60

--Test case 5
select siSchoolID from KCC.dbo.School (nolock) where siSchoolID = 16
--Test case 6
select GraduateLevel, * from  C2K2KCCIntegration..syn_adDegree (nolock) where AdDegreeID = 25
--Test case 7
select  ckmDegreeTypeID, tiProgramType  from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock)   where adDegreeID =25
--Test case 8
select  tiProgramType from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock) where ckmDegreeTypeID = 9
--Test case 9

select  * from  KCC.dbo.ProgramType (nolock) where tiProgramType = 1
--Test case 10
Select  * from  KCC.dbo.Calendar (nolock)   where iCalendarID = 1
--Test case 11
select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 452030
--Test case 12
select * from KCC.dbo.Program where iProgramID = 37829

--============*************************
--**************************************
--**************************************
--Delete Program Version
--Delete the above created/updated program version by click on Delete button on Program Versions window
--Verify DB

--Step-1
select * from C2000_LMS.dbo.adProgramVersion With (nolock) where AdProgramVersionID in (select  AdProgramVersionID from  c2k2kccintegration..syn_adProgramVersion With (nolock) where AdProgramVersionID= 452030)
--Step-2
select  * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 452030
--Step-3
select * from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where sourcetablename= 'adprogramversion' and c2k2kccexecutionsummaryid= (select c2k2kccexecutionsummaryid from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where UpdateType='d'and SourceTableName='adprogramversion' and SourcePrimaryKey= 452030)
--Step-4
select *  from KCC.dbo.Program where iProgramID in (select  iProgramID from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID  =452026)


--Real time scenarios


select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449353
select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where iProgramid =36495

select AdProgramVersionID,adProgramGroupId , AdProgramId, AdDegreeID from c2k2kccintegration..syn_adProgramVersion With (nolock) where code ='AUTOGEXIEY'
select * from c2k2kccintegration..syn_adProgramVersion where adProgramVersionID = 449353
select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449342

select AdProgramVersionID,adProgramGroupId , AdProgramId, AdDegreeID from c2k2kccintegration..syn_adProgramVersion With (nolock) where code ='AUTOIXSDXT'

select top 50 * from c2k2kccintegration..ckmschool 
select AdProgramGroupID from c2k2kccintegration..ckmProgramGroup where AdProgramGroupID 
in (select AdProgramGroupID from c2000_lms..adprogramgroup)

select * from c2k2kccintegration..ckmProgramGroup where AdProgramGroupID=38
code like '%aa%'
where AdProgramGroupID=530

AdProgramGroupID (48) not found in ckmProgramGroup

select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449341

select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449344
select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449344
select * from KCC.dbo.Program where iProgramID =36493

select * from  KCC.dbo.ckmProgram where adProgramVersionID =449344 and iProgramID=36493
select Top(10) * from C2000_LMS.dbo.adProgramVersion order by adprogramversionID desc
select * from C2000_LMS.dbo.adProgramVersion With (nolock) where AdProgramVersionID in (select  AdProgramVersionID from  c2k2kccintegration..syn_adProgramVersion With (nolock) where AdProgramVersionID=449344)
select  * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 449344
select * from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where sourcetablename= 'adprogramversion' and c2k2kccexecutionsummaryid= (select c2k2kccexecutionsummaryid from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where UpdateType='d'and SourceTableName='adprogramversion' and SourcePrimaryKey= 449344)

select *  from KCC.dbo.Program where iProgramID in (select  iProgramID from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID  =449344)

--Queues
select top(40)* from c2k2kccintegration..c2k2kccqueueErrorLog order by 1 desc
select top(20)* from c2k2kccintegration..c2k2kccqueueHistory order by 1 desc

select Top(10) * from c2k2kccintegration..c2k2kccqueue order by 1 desc
290730933	449353
290730932	594016