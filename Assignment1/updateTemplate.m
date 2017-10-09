function newTemplate = updateTemplate(x, y, templateIndex , dimensions , thermometer, templates)

startX = round(x - dimensions(templateIndex).width/2 );
endX = round(x + dimensions(templateIndex).width/2 );

startY = round(y - dimensions(templateIndex).height/2 );
endY = round(y + dimensions(templateIndex).height/2 );

newTemplate = templates;
newTemplate{templateIndex} = thermometer(startX:endX, startY:endY);
end