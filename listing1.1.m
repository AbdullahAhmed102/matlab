p = uty_par_qcmta();   % Vehicle parameter

% Compute steady state tire forces
Fx = 0;
Fz = ( p.mC + p.mK + p.mW ) * p.g;

% mass & CoGof knuckle & trailing arm
mS = p.mK + p.mW;  sS = ( p.s*p.mK + p.a*p.mW ) / mS;

% solve non-linear equation by using matlab function fzero
be_st = fzero(@(be) ...
    -(p.Ts))