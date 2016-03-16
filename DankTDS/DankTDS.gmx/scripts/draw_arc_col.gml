//draw_arc_col(x1,y1,r,rot1,rot2,col1,col2,steps)
var x1,y1,r,rot1,rot2,steps,l,m;
x1=argument0;
y1=argument1;
r=argument2;
rot1=argument3;
rot2=argument4;
col1=argument5;
col2=argument6;
steps=argument7;
l=0;
m=0;
draw_primitive_begin(pr_linestrip);
for (l=0;l<=steps;l+=1) {
    m=(l/steps);
    draw_vertex_color(x1+lengthdir_x(r,(m*rot1)+((1-m)*rot2)),y1+lengthdir_y(r,(m*rot1)+((1-m)*rot2)),merge_color(col2,col1,m),1)
}
draw_primitive_end()
