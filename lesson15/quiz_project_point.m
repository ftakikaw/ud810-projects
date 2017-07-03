pkg load image;
%% Project a point from 3D to 2D using a matrix operation

%% Given: Point p in 3-space [x y z], and focal length f
%% Return: Location of projected point on 2D image plane [u v]
function p_img = project_point(p, f)
    
    %% define projection matrix (size 3x4)
    A = [f, 0, 0, 0;
         0, f, 0, 0;
         0, 0, 1, 0];
        
    %% convert p to homogeneous coordinates and transpose (size 4x1)
    p_hom = [p 1]';
    
    %% apply projection transformation
    p_proj = A * p_hom; %% note: use * not .* (not element-wise multiplication)
    
    %% convert back to non-homogeneous coordinates and return
    p_img = [(p_proj(1)/p_proj(3)) (p_proj(2)/p_proj(3))];
    
endfunction

%% Test: Given point and focal length (units: mm)
p = [200, 100, 100];
f = 50;

disp(project_point(p, f));