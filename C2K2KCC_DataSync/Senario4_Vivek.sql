Select * from C2k2KCCScenarioExecutionOrder order by 5

select  * from  syn_adProgramVersion With (nolock)  where Code like 'AUTOFDWHDX'
select  * from  syn_adProgramVersion With (nolock)  where AdProgramVersionID= 451027

select  * from  KCC.dbo.ckmProgram(nolock) where AdProgramVersionID = 451027
iProgramId = 37508

select  * from  C2K2KCCIntegration.dbo.ckmSchool (nolock) where AdProgramId = 60 and AdDegreeId = 10
siSchoolID = 16
select  * from  KCC.dbo.School where siSchoolID = 16

select  * from  syn_adDegree (nolock) where AdDegreeID = 10
GraduateLevel = 0

select  * from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock) where adDegreeID = 10
ckmDegreeTypeID = 5, tiProgramType = 1

select  * from  C2K2KCCIntegration.dbo.ckmDegreeType (nolock) where ckmDegreeTypeID = 5

select  * from  KCC.dbo.ProgramType (nolock) where tiProgramType = 1 

select  * from  KCC.dbo.Calendar (nolock) where iCalendarID = 1

select  * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 451027

select top 50 * from c2k2kccintegration.dbo.c2k2kccQueueHistory Where SourcePrimaryKey=451027 order by 1 desc

select  iProgramID, * from  KCC.dbo.ckmProgram (nolock) where adProgramVersionID = 451027
