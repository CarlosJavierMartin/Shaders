//https://thndl.com/square-shaped-shaders.html
//https://twitter.com/baldand

#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159265359
#define TWO_PI 6.28318530718

uniform vec2 u_resolution;
uniform float u_time;

uniform float scale;
uniform int N;
uniform int b;
uniform float off;

uniform vec3 colorA;
uniform vec3 colorB;

// Reference to
// http://thndl.com/square-shaped-shaders.html

vec4 figure(in vec2 _st){
	  float d = 0.0;
    vec3 color = vec3(0.0);
    _st = _st *2.-1.;
    float a = atan(_st.x,_st.y)+PI;
    float r = TWO_PI/float(N);

    d = cos(floor(.5+a/r)*r-a)*length(_st);

    color = vec3(1.0-smoothstep(.4,.41,d));
    color = mix(colorA, colorB, color);

    return vec4(color,1.0);
}


void main(){
    
    vec2 st = gl_FragCoord.xy/u_resolution;
    vec3 color = vec3(0.0);
    if (b != 1)
    //float off = sin(u_time);
    //if (sign(off)>0.)
    {
        if (floor(mod(st.y*scale,2.0)) == 1.)
    		st.x += off*b;
    }
    else
    {
        if (floor(mod(st.x*scale,2.0)) == 1.)
    		st.y += off;
    }
    
    //Escala en función de la escala adoptada
    st = fract(st*scale); 

	gl_FragColor = figure(st);
}
