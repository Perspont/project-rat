//camWidth = 320;
//camHeight = 180;

//follow = oJoaoRatazana

//xTo = x
//yTo = y

//global.MonitorW=display_get_width();
//global.MonitorH=display_get_height();

//global.Xoffset=(global.MonitorW-800)/2;
//global.Yoffset=(global.MonitorH-450)/2;

//if(global.MonitorW>=1600 && global.MonitorH>=900)
//{
//   surface_resize(application_surface,1600,900)
//   global.Xoffset=(global.MonitorW-1600)/2;
//   global.Yoffset=(global.MonitorH-900)/2;
//}

var show = true

window_set_size(display_get_width() , 0.98*display_get_height())
window_set_position(0,  0.025*display_get_height())
window_set_caption("Rato")