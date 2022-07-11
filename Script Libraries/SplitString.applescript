--
--	Library Created by: Stephen Schwetz
--	Created on: 12/07/22
-- 	Copyright © 2022 Stephen Schwetz, All Rights Reserved
--
-- Stolen from https://erikslab.com/2007/08/31/applescript-how-to-split-a-string/
--
-- Usage
-- =====
--
-- set myArray to my theSplit(myTestString, "-")
--
on SplitString(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result
	return theArray
end SplitString

