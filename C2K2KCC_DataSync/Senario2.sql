select * from C2000_LMS.dbo.systudent where systudentid =50284
select Top(50) * from C2000_LMS.dbo.adshift where adshiftid = 15
select  Top(1) Code, Descrip, AdShiftId, AdTermId from  C2000_LMS.dbo.adTerm Where adtermid = 20038
select  Top(1) * from  C2000_LMS.dbo.adTerm With (nolock) Where code like 'Auto%'

select top(20) * from C2k2kccIntegration.dbo.C2k2KCCQueue (nolock) order by 1 desc


--Scenario 2  - ADD / UPDATE (Browse To List > Academics Records > Terms Tab
--Click Add, Enter Code, Description, Start Date, End Date and Specific Shift.
select  Top(1) AdShiftId, AdTermID, * from  C2000_LMS.dbo.adTerm With (nolock) Where code = 'AUTO_STAGE'
select top(1) iTrackId, * from KCC.dbo.ckmshift With (nolock) Where AdShiftID = '31'
select Top(1) iCalendarPeriodID,* from KCC.dbo.ckmCalendarPeriod where AdTermID=515936
select Top(10) vchPeriodID, * from KCC.dbo.CalendarPeriod where iCalendarPeriodID=474
select * from  KCC.dbo.TrackCalendarPeriod where iCalendarPeriodID=474 and iTrackID=9
--Edit Description and Start Date
select  Top(1) AdShiftId, AdTermID, * from  C2000_LMS.dbo.adTerm With (nolock) Where code = 'AUTO_STAGE'
select top(1) iTrackId, * from KCC.dbo.ckmshift With (nolock) Where AdShiftID = '31'
select Top(1) iCalendarPeriodID,* from KCC.dbo.ckmCalendarPeriod where AdTermID=515936
select Top(10) vchPeriodID, * from KCC.dbo.CalendarPeriod where iCalendarPeriodID=474
select * from  KCC.dbo.TrackCalendarPeriod where iCalendarPeriodID=474 and iTrackID=9
-- Delete Term
select  Top(1) * from  C2000_LMS.dbo.adTerm With (nolock) Where code = 'AUTO_STAGE'
select top(1) * from KCC.dbo.ckmshift With (nolock) Where AdShiftID = '31'
select Top(1) * from KCC.dbo.ckmCalendarPeriod where AdTermID=515936
select *  from  KCC.dbo.CalendarPeriod where iCalendarPeriodID in (select  iCalendarPeriodID  from  KCC.dbo.ckmCalendarPeriod (nolock)     where AdTermID = 515806)
select *  from  KCC.dbo.TrackCalendarPeriod where itrackid =9 and iCalendarPeriodID=474

select Top(10) * from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adterm' and SourcePrimaryKey = 515936
select Top(10) * from C2k2kccIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adterm' order by 1 DESC
select *  from C2K2KCCIntegration.dbo.vw_JobExecutionSummary where sourcetablename='adterm' and UpdateType = 'D' and SourcePrimaryKey = 510871