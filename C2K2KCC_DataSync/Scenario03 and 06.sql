--Scenario 2  - ADD / UPDATE (Browse To List > Academics Records > Shift Tab
--Click Add, Enter Code, Description and Campus as 042
select  * from  C2000_LMS.dbo.adShift (nolock)  where Code like 'AT_Stage'
select  * from  KCC.dbo.CKMSHIFT (nolock) where adShiftID = 138
select * from KCC.dbo.Track (nolock)where iTrackId = 19
select * from KCC.dbo.CKMSHIFT (nolock) where adShiftId=138 and iTrackId=19
select Top(10) *  from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adshift' and UpdateType = 'U' order by  1 desc
select Top(10) *  from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adshift' and UpdateType = 'D' and SourcePrimaryKey = 137
--Editescription
select  * from  C2000_LMS.dbo.adShift (nolock)  where Code like 'AT_Stage'
select  * from  KCC.dbo.CKMSHIFT (nolock) where adShiftID = 138
select * from KCC.dbo.Track (nolock)where iTrackId = 19
select * from KCC.dbo.CKMSHIFT (nolock) where adShiftId=138 and iTrackId=19
--Delete Shift
select  * from  C2000_LMS.dbo.adShift (nolock)  where Code = 'AUTO_271'
select  * from  KCC.dbo.CKMSHIFT (nolock) where adShiftID = 135
select * from KCC.dbo.Track (nolock)where iTrackId = 19
select Top(10) * from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adshift' order by 1 DESC

select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) where SourcePrimaryKey = '138' Order by 1 desc
select top(2) * from C2k2kccIntegration.dbo.C2k2KCCQueueHistory (nolock) order by 1 desc
select top(2) * from C2k2kccIntegration.dbo.C2k2KCCQueueErrorlog (nolock) order by 1 desc

select  * from  C2000_LMS.dbo.adShift (nolock)  where Code = 'AUTO2312'
Select adshiftid from C2000_LMS.dbo.adShift (nolock)  where Code like 'AUTO%' AND adshiftid NOT IN 
(Select adshiftid from C2000_LMS.dbo.adShift (nolock)  where Code like 'AUTO%' INTERSECT Select DISTINCT adshiftid  from c2000_LMS.dbo.adclasssched)
Select Top(1) Code, adshiftid, Descrip from C2000_LMS.dbo.adShift (nolock)  where Code like 'AT_%' and adShift.adshiftid not In (Select DISTINCT adclasssched.adshiftid  from c2000_LMS.dbo.adclasssched where adShift.adshiftid=adclasssched.adshiftid)
Select adshiftid from C2000_LMS.dbo.adShift (nolock)  where adshiftid Not In (Select adshiftid  from c2000_LMS.dbo.adclasssched with (nolock))

Select Top(1) Code, adshiftid, Descrip from C2000_LMS.dbo.adShift (nolock)  where Code like 'AUTO%' and adShift.adshiftid not In (Select DISTINCT adclasssched.adshiftid  from c2000_LMS.dbo.adclasssched where adShift.adshiftid=adclasssched.adshiftid)
Select Top(1) adShift.Code from C2000_LMS.dbo.adShift (nolock)  where adShift.adshiftid not In (Select DISTINCT adclasssched.adshiftid  from c2000_LMS.dbo.adclasssched where adShift.adshiftid=adclasssched.adshiftid)

Select adShift.adshiftid from C2000_LMS.dbo.adShift,c2000_LMS.dbo.adclasssched (nolock)  where adShift.adshiftid  Not In (Select DISTINCT adclasssched.adshiftid  from c2000_LMS.dbo.adclasssched with (nolock))

Select adshiftid from C2000_LMS.dbo.adShift (nolock)  where Code like 'Auto%' and adshiftid Not In (Select DISTINCT adshiftid  from c2000_LMS.dbo.adclasssched) 
 
--Scenario 06

select  * from  C2000_LMS.dbo.adDegree With (nolock)  where Code like 'AT_Stage'
select  AdDegreeId, * from  C2000_LMS.dbo.adDegree (nolock)  where Code = 'AT_Stage'
--Note Down the AdDegreeID and Description For example "82" and "Master"

Select iDegreeType, * from C2K2KCCIntegration.dbo.ckmDegreeType where adDegreeID=136
--Check in C2K2KCCIntegration.dbo.ckmDegreeType
select  a.Descrip,b. tiProgramType from  C2000_LMS.dbo.adDegree a inner join 
C2K2KCCIntegration.dbo.ckmDegreeType b on a.adDegreeID=b.adDegreeID where a.adDegreeID = 136
--NoteDown the iDegreeType, for example "8"

-- Check the record existense for iDegreeType = 8
select * from KCC.dbo.DegreeType where iDegreeType=14

--Check the record existence for AdDegreeID, iDegreeType and TiProgramType
-- If Descrip = certificate then tiProgramType = 2 Otherwise tiProgramType = 1 in the CKMDegreetype table

select  * from  C2k2KCCIntegration.dbo.ckmDegreeType (nolock) where adDegreeID = 136
select * from C2k2KCCIntegration.dbo.ckmDegreeType where adDegreeId=136 and iDegreeType=14 and tiProgramType=1


--Delete Degree
select  * from  C2000_LMS.dbo.adDegree With (nolock)  where Code = 'AUTO9999'
select  * from  C2k2KCCIntegration.dbo.ckmDegreeType (nolock) where adDegreeID = 136
select * from KCC.dbo.DegreeType With (nolock)  where iDegreeType=14
select Top(10)* from C2k2KCCIntegration.dbo.vw_JobExecutionSummary With (nolock) where sourcetablename='adDegree' and UpdateType = 'D' and SourcePrimaryKey = 136