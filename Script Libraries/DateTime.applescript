--
--	Created by: Stephen Schwetz
--	Created on: 12/07/22
--
--	Copyright © 2022 Stephen Schwetz, All Rights Reserved
--

use AppleScript version "2.7"
use scripting additions


on getTime(theDate as date)
	-- declare variables local
	local theTime
	-- initialise variable
	set theTime to missing value
	try
		-- extract the time from theDate
		set theTime to (time string of (theDate))
		-- return theTime
		return theTime
	on error
		return missing value
	end try
end getTime

on getISODate(theDate as date)
	-- declare variables local
	local theISODate
	-- initialise variables
	set theISODate to missing value
	try
		set {year:yr, month:mn, day:dy} to (theDate)
		set theISODate to (yr as text) & "-" & pad(mn as integer) & "-" & pad(dy)
		return theISODate
	on error
		return missing value
	end try
end getISODate
