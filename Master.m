%-------------------------------------------------------------------------
% RUN THIS!
%-------------------------------------------------------------------------

figure;

while 1 
% Clearing variables and arrays
n = 0;
x = [];
y = [];

% Generating random n and creating x and y arrays
n = randi(500) + 10;

y = CollatzFunction(n);
x = 0:(length(y) -1);
c = [0.8 0 0];

% Plotting first point and setting up axes
plot = scatter(x(1),y(1),25,c,'filled');

xlim([0 (max(x))]);
ylim([1 (max(y) * 1.1)]);

% Adding text
sn = num2str(n);
sl = num2str(length(y) -1);
sm = num2str(max(y));

txt = ['n = ' sn  newline  'steps = ' sl  newline  'max = ' sm];


text((max(x) * 0.80),max(y),txt,'FontSize',12);

% Plotting the rest of the points
for k = 2:length(y)
    
    plot.XData = x(1:k);
    plot.YData = y(1:k);

    pause(5 / length(y));
    
end

pause(0.1)

end
   