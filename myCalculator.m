function myCalculator()

fighandle = uifigure ( 'Name', 'myCalculator');

textArea = uitextarea(fighandle);
textArea.Position = [20 350 510 20];
textArea.Value = '0';
textArea.HorizontalAlignment = 'right';

button_1 = uibutton(fighandle);
button_1.Text = '1';
button_1.Position = [20 300 80 22];
button_1.ButtonPushedFcn = @(button_1, event) button_1CallBack(textArea);

button_2 = uibutton(fighandle);
button_2.Text = '2';
button_2.Position = [120 300 80 22];
button_2.ButtonPushedFcn = @(button_2, event) button_2CallBack(textArea);

button_3 = uibutton(fighandle);
button_3.Text = '3';
button_3.Position = [220 300 80 22];
button_3.ButtonPushedFcn = @(button_3, event) button_3CallBack(textArea);

button_4 = uibutton(fighandle);
button_4.Text = '4';
button_4.Position = [20 250 80 22];
button_4.ButtonPushedFcn = @(button_4, event) button_4CallBack(textArea);

button_5 = uibutton(fighandle);
button_5.Text = '5';
button_5.Position = [120 250 80 22];
button_5.ButtonPushedFcn = @(button_5, event) button_5CallBack(textArea);

button_6 = uibutton(fighandle);
button_6.Text = '6';
button_6.Position = [220 250 80 22];
button_6.ButtonPushedFcn = @(button_6, event) button_6CallBack(textArea);

button_7 = uibutton(fighandle);
button_7.Text = '7';
button_7.Position = [20 200 80 22];
button_7.ButtonPushedFcn = @(button_7, event) button_7CallBack(textArea);

button_8 = uibutton(fighandle);
button_8.Text = '8';
button_8.Position = [120 200 80 22];
button_8.ButtonPushedFcn = @(button_8, event) button_8CallBack(textArea);

button_9 = uibutton(fighandle);
button_9.Text = '9';
button_9.Position = [220 200 80 22];
button_9.ButtonPushedFcn = @(button_9, event) button_9CallBack(textArea);

button_0 = uibutton(fighandle);
button_0.Text = '0';
button_0.Position = [120 150 80 22];
button_0.ButtonPushedFcn = @(button_0, event) button_0CallBack(textArea);

button_clr = uibutton(fighandle);
button_clr.Text = 'Clear';
button_clr.Position = [320 300 80 22];
button_clr.ButtonPushedFcn = @(button_clr, event) button_clrCallBack(textArea);

button_add = uibutton(fighandle);
button_add.Text = '+';
button_add.Position = [320 250 80 22];
button_add.ButtonPushedFcn = @(button_add, event) button_addCallBack(textArea);

button_subtrct = uibutton(fighandle);
button_subtrct.Text = '-';
button_subtrct.Position = [320 200 80 22];
button_subtrct.ButtonPushedFcn = @(button_subtrct, event) button_subtrctCallBack(textArea);

button_equal = uibutton(fighandle);
button_equal.Text = '=';
button_equal.Position = [320 150 80 22];
button_equal.ButtonPushedFcn = @(button_equal, event) button_equalCallBack(textArea);

button_multi = uibutton(fighandle);
button_multi.Text = '*';
button_multi.Position = [20 150 80 22];
button_multi.ButtonPushedFcn = @(button_multi, event) button_multiCallBack(textArea);

button_div = uibutton(fighandle);
button_div.Text = '/';
button_div.Position = [220 150 80 22];
button_div.ButtonPushedFcn = @(button_div, event) button_divCallBack(textArea);


end



function button_1CallBack(textArea)


textArea.Value = [textArea.Value{1} '1'];


end

function button_2CallBack(textArea)


textArea.Value = [textArea.Value{1} '2'];


end

function button_3CallBack(textArea)


textArea.Value = [textArea.Value{1} '3'];


end

function button_4CallBack(textArea)


textArea.Value = [textArea.Value{1} '4'];


end

function button_5CallBack(textArea)


textArea.Value = [textArea.Value{1} '5'];


end

function button_6CallBack(textArea)


textArea.Value = [textArea.Value{1} '6'];


end

function button_7CallBack(textArea)


textArea.Value = [textArea.Value{1} '7'];


end

function button_8CallBack(textArea)


textArea.Value = [textArea.Value{1} '8'];


end

function button_9CallBack(textArea)


textArea.Value = [textArea.Value{1} '9'];


end

function button_0CallBack(textArea)


textArea.Value = [textArea.Value{1} '0'];


end

function button_clrCallBack(textArea)


textArea.Value = '';


end

function button_addCallBack(textArea)


textArea.Value = [textArea.Value{1} '+'];


end

function button_subtrctCallBack(textArea)


textArea.Value = [textArea.Value{1} '-'];


end

function button_multiCallBack(textArea)


textArea.Value = [textArea.Value{1} '*'];


end

function button_divCallBack(textArea)


textArea.Value = [textArea.Value{1} '/'];


end

function button_equalCallBack(textArea)
try

    textArea.Value = [textArea.Value{1} '=' num2str(eval(textArea.Value{1}))];
catch 
    textArea.Value = 'Error!';
end

end