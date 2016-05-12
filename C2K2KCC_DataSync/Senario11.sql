select  SyStaffId, syCountryID, syCampusid, State, * from  C2000_LMS.dbo.systaff(nolock) where Code  like 'Auto_%'
select  SyStaffId, syCountryID from  C2000_LMS.dbo.systaff(nolock) where Code  = 'Auto_4544charlie.kaplaninc.com'
select  SyStaffId, syCountryID, syCampusid, * from  C2000_LMS.dbo.systaff(nolock) where syStaffid =504518
select  Top (5) * from  KCC.dbo.CKMSTUDENT (nolock) where syStudentId=504518 and chenrolltype = 'INS' 
select Descrip from C2000_LMS.dbo.syCountry with (nolock) where syCountryID = 511
select * from KCC.dbo.Student where  iStudentid =5177785      
select * from KCC.dbo.Studentprofile where  iStudentid =5177785

select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueue with (nolock)

select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueueHistory with (nolock) where SourceTableName = 'systaff' order by HistoryDateCreated desc

select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueueHistory with (nolock) where SourceTableName = 'systaff' order by 1 desc
select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueueErrorlog with (nolock) where QueueSourceTableName = 'systaff' and QueueSourcePrimaryKey = '504518' order by LogDateCreated desc

Select * from C2000_LMS..syCampus where syCampusid=43

select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueueErrorlog with (nolock) 
where QueueSourceTableName = 'systaff' and QueueSourcePrimaryKey = '501286' order by LogDateCreated desc


select Top(20) * from c2k2kccintegration.dbo.c2k2kccQueueHistory with (nolock) 
where SourceTableName = 'systaff' and (SourcePrimaryKey=501286 or SourcePrimaryKey =501287) order by HistoryDateCreated desc

