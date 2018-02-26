-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Feb 2018
--
-- how to calculate the area of trapezoid
-----------------------------------------------------------------------------------------

local lengthOfBasea
local lengthOfBaseb
local lengthOfHeighth
local areaOfTrapezoid

local instructionsText = display.newText( "Enter the number", 500, 200, native.systemFont, 120 )
local answerText = display.newText( "Answer", 600, 1150, native.systemFont, 100 )

local base1Text = display.newText( "Base a =", 1050, 400, native.systemFont, 100 )
local lengthOfBaseaTextField = native.newTextField( display.contentCenterX + 600, display.contentCenterY - 350, 450, 100)
lengthOfBaseaTextField.id = "length Base a textField"

local base2Text = display.newText( "Base b =", 1050, 600, native.systemFont, 100 )
local lengthOfBasebTextField = native.newTextField( display.contentCenterX + 600, display.contentCenterY - 150, 450, 100)
lengthOfBasebTextField.id = "length Base b textField"

local heightText = display.newText( "Height h =", 1080, 800, native.systemFont, 100 )
local lengthOfHeighthTextField = native.newTextField( display.contentCenterX + 600, display.contentCenterY + 50, 450, 100)
lengthOfHeighthTextField.id = "length Height h textField"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 400
enterButton.id = "enter button"

local function calculateButtonTouch( event )
	-- it is not perfect, but we will make it better soon
	lengthOfBasea = lengthOfBaseaTextField.text
	lengthOfBaseb = lengthOfBasebTextField.text
	lengthOfHeighth = lengthOfHeighthTextField.text
	areaOfTrapezoid = (lengthOfBasea + lengthOfBaseb)*lengthOfHeighth/2
	answerText.text = "The area is: " .. areaOfTrapezoid .. "cm^2"
	--local displayAnswer = display.newText( areaOfTrapezoid, 400, 1150, native.systemFont, 100 )
	print( "The area is", areaOfTrapezoid )
	
	return true

end

enterButton:addEventListener("touch", calculateButtonTouch)