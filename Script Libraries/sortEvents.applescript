--
--	Created by: Stephen Schwetz
--	Created on: 11/07/22
--
--	Copyright © 2022 Stephen Schwetz, All Rights Reserved
--
-- Script Library to sort a list of Calendar Items into Correct Timeline
-- I stole it from https://christianboyce.com/your-appointments-sir/
-- he found it on MacScripter.net.
-- on sortEvents(myList)


-- sortEvents(myList)

on sortEvents(myList)
	set myNewList to {}
	repeat until length of myList = 0
		set leastIndex to findLeastItem(myList)
		set end of myNewList to item leastIndex of myList
		set myList to removeItemAtIndex(myList, leastIndex)
	end repeat
	return myNewList
end sortEvents

on findLeastItem(lst)
	tell application "Calendar"
		set theLeast to start date of item 1 of lst
		set theIndex to 1
		set iterater to 1
		repeat with i in lst
			if start date of i ≤ theLeast then
				set theLeast to start date of i
				set theIndex to iterater
			end if
			set iterater to iterater + 1
		end repeat
		
		return theIndex
	end tell
end findLeastItem

on removeItemAtIndex(lst, theIndex)
	set newList to {}
	set theLength to length of lst
	if theLength = 1 then
		set newList to {}
	else if theLength = theIndex then
		set newList to items 1 thru (theLength - 1) of lst
	else if theIndex = 1 then
		set newList to items 2 thru theLength of lst
	else
		set newList to items 1 thru (theIndex - 1) of lst & items (theIndex + 1) thru (theLength) of lst
	end if
	return newList
end removeItemAtIndex

