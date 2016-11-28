help rand
for j = [1:3]
    rand(1, 5)
end
rand(5)
rand(3, 2)
rand(2, 4)
r = rand(1, 500);

help stem
stem(r)

r(50)
%r(0)
%r(501) r is indexed from 1 to 500, 0 and 501 are indexes that does not
%exist

s1 = [r(5), r(50)]
s2 = r(5:50)