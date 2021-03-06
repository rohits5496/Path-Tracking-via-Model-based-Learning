clear all;
%fig = openfig('errors.fig');
fig = gcf;

a = get(gca,'Children');
axObjs = fig.Children;
dataObjs = axObjs.Children;
xdata = get(a, 'XData');
ydata = get(a, 'YData');

figure('Units','inches', ...
'Position',[2 2 5 4], ...
'PaperPositionMode','auto');

plot(xdata{6},ydata{6},'-b',...
    xdata{5},ydata{5},'-g',...
    xdata{4},ydata{4},'-k',...
    xdata{3},ydata{3},'-.b',...
    xdata{2},ydata{2},'-.g',...
    xdata{1},ydata{1},'-.k');

set(gca,...    
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',11,...
    'FontName','Times')
title('Prediction Errors : Rough Terrain, Curve');
xlabel('Time');
ylabel('Errors');
legend('x','y','z','\alpha','\beta','\gamma');
axis([2 50 -0.1 0.1]);
print -depsc2 errors_dsinhf3_curve.eps