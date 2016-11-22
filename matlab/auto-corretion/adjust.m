function csys = adjust(sys,w,h)

origin = surfeit(sys);%����ԣ��
phase_forward = w - origin(1);%��ǰ��

if phase_forward < 60 % ����ǰ��С��60ʱʹ�ó�ǰ����
    csys = forward(sys,w,h);
else % ����ʹ���ͺ����
    csys = backward(sys,w,h);
end

bode(sys,csys(3))

legend('sys-origin','sys-result')
end
