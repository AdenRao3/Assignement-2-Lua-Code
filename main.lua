-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: Febuary 25th, 2019 
-- 
-- This program you put in the radius of a circle and it will calculate the area and circumference of the circle.
-----------------------------------------------------------------------------------------

display.setDefault( "background", 100/255, 150/255, 250/255 )

local title = display.newImageRect( "assets/title.png", 800, 600 )
title.x = display.contentCenterX - 5
title.y = display.contentCenterY + 5

local circle = display.newImageRect( "assets/circle.png", 150, 150)
circle.x = display.contentCenterX
circle.y = 145

local image = display.newImageRect( "assets/line.png", 1000, 350 )
image.x = 175
image.y = 65

local image = display.newImageRect( "assets/line.png", 1000, 350 )
image.x = 175
image.y = 220

local image = display.newImageRect( "assets/line.png", 1000, 350 )
image.x = 175
image.y = 445

local image = display.newImageRect( "assets/line.png", 1000, 350 )
image.x = 175
image.y = 295

local dOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 300, 50 )
dOfCircleTextField.id = "d textField"

local areaOfCirlceTextField = display.newText( "Area", display.contentCenterX, display.contentCenterY + 227, native.systemFont, 25 )
areaOfCirlceTextField.id = "area textField"
areaOfCirlceTextField:setFillColor( 1, 1, 1 )

local circumferenceOfCirlceTextField = display.newText( "Circumference", display.contentCenterX, display.contentCenterY + 257, native.systemFont, 25 )
circumferenceOfCirlceTextField.id = "circumference textField"
circumferenceOfCirlceTextField:setFillColor( 1, 1, 1 )

local diameterTextField = display.newText( "Enter Diameter", display.contentCenterX, display.contentCenterY + 87, native.systemFont, 30 )
diameterTextField.id = "diameter textField"
diameterTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "assets/button.png", 125, 50 )
calculateButton.x = display.contentCenterX
calculateButton.y = 257
calculateButton.id = "calculate button"

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 2)
  return math.floor(num * mult + 0.5) / mult
end
 
local function calculateButtonTouch( event )
    
    local diameterOfCircle
    local areaOfCirlce
    local circumferenceOfCircle
 
    dOfCirlce = dOfCircleTextField.text
    areaOfCirlce = ((dOfCirlce / 2) * (dOfCirlce / 2)) * 3.141592653
    areaOfCirlce = round(areaOfCirlce)
    circumferenceOfCircle = (dOfCirlce / 2) * 2 * 3.141592653
    circumferenceOfCircle = round(circumferenceOfCircle)

    areaOfCirlceTextField.text = "Area is " .. areaOfCirlce
    circumferenceOfCirlceTextField.text = "Circumference is " .. circumferenceOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )

