//==============================================================================================
// Based in the code written in 2016 by Peter Shirley <ptrshrl@gmail.com> for 
// Raytracing in One Weekend
// https://raytracing.github.io/books/RayTracingInOneWeekend.html
//==============================================================================================

#ifndef RAY_H
#define RAY_H

#include "vec3.h"

class ray {
    public:
        point3 orig;
        vec3 dir;

        ray() {}
        ray(const point3& origin, const vec3& direction)
            : orig(origin), dir(direction)
        {}

        point3 origin() const  { return orig; }
        vec3 direction() const { return dir; }

        point3 at(double t) const {
            return orig + t*dir;
        }
};

#endif