local Nps = 0;
local MaxNps = 0;
local npsRefresh1 = 0;
local npsRefresh2 = 0;

local function round(num, dp) -- i stole this
     local mult = 10^(dp or 0);
     return math.floor(num * mult + 0.5)/mult;
end

function onSongStart()
	runTimer(npsTimer1, 1, 0)
	runTimer(npsTimer2, 1, 0)
end

function onRecalculateRating()
     rateFullPer = round(getProperty('ratingPercent') * 100, 2)
     return Function_Continue
end

function onUpdatePost(elapsed)
     local BeforeScore = 'NPS: '..Nps..' (Max: '..MaxNps..') | Score: '..score..' | Misses: '..misses..' | Rating: '..ratingName
     local FinalScore = 'NPS: '..Nps..' (Max: '..MaxNps..') | Score: '..score..' | Misses: '..misses..' | Rating: '..ratingName..' ('..rateFullPer..'%) - '..ratingFC

     if ratingName == '?' then
          setTextString('scoreTxt', BeforeScore)
     else
          setTextString('scoreTxt', FinalScore)  
     end

     if MaxNps < Nps then
          MaxNps = Nps
     end 
end
    
function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then
		npsRefresh1 = npsRefresh1 + 1
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == npsTimer1 then
		npsRefresh2 = npsRefresh1
		runTimer(npsTimer4, 1, 0)
     elseif tag == npsTimer2 then
 		Nps = (npsRefresh2)
		runTimer(npsTimer3, 1, 0)
	elseif tag == npsTimer3 then
		npsRefresh2 = 0
     elseif tag == npsTimer4 then
		npsRefresh1 = 0
	end
end