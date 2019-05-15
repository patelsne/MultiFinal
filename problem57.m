syms Ixz Ixy Iyz m a L;
Ix = (1/12)*m.*(3*a.^2+L.^2);
Iy = (1/2)*m.*a.^2;
Iz = (1/12)*m.*(3*a.^2+L.^2);
Ix = Ixz + Ixy;
Iy = Ixy + Iyz;
Iz = Iyz + Ixz;
sol = solve(Ix,Iy,Iz);  
xz = sol.Ixz;
xy = sol.Ixy;
yz = sol.Iyz;
if xz == xy && xy == yz
    ans = "these moments of inertia are verified!"
else
    ans = "unverified"
end
