# M_slices -- `ALPHA VERSION`
# ![M_slices](docs/images/_30x40.svg)

A basic slice plot module based on M_draw(3f) and built using
[fpm](https://github.com/fortran-lang/fpm).

**NOTE**: This version requires X11 Windows.

This module intentionally duplicates graphics routines in other parts of
the GPF (General Purpose Fortran) package so that the main DL_SLICES(3f)
routine is essentially self-contained except for very low-level external
graphics functions. This is so this routine can easily be independently
developed and ported to other underlying graphics libraries.

A 3-d surface is plotted by plotting slices through the volume which
are parallel to the x-y plane. The x,y values of the surface at the
intersection of the slice plane and the fixed z value are plotted. Hidden
lines are suppressed, giving the illusion of a 3 dimensional surface.
The height of the plotted surface relative to the y axis value is
calibrated to the x and z axes. No perspective is used.

If the output device is X11 Windows the plot in the demo app may be
panned using characters entered in the window. Enter "h" for directions
in the window.

## UNFOLDING DEVELOPMENT
This routine is useful but uses code with a very long pedigree that
is being redeveloped, and is subject to change without notice.

## USER DOCUMENTATION
   - a simple index to the man-pages for the
   [routines](https://urbanjost.github.io/M_slices/man3.html) 
   and [programs](https://urbanjost.github.io/M_slices/man1.html) 
   in HTML form.

   - A single page that uses javascript to combine all the HTML
   descriptions of the manpages is at 
   [BOOK_M_draw](https://urbanjost.github.io/M_slices/BOOK_M_slices.html).

## SUPPORTS FPM ![-](docs/images/fpm_logo.gif)

   download the github repository and build it with
   fpm ( as described at [Fortran Package Manager](https://github.com/fortran-lang/fpm) )

   ```bash
        git clone https://github.com/urbanjost/M_slices.git
        cd M_slices
        fpm run
        fpm run --example
        fpm test
   ```
   or just list it as a dependency in your fpm.toml project file.

```toml
        [dependencies]
        M_slices        = { git = "https://github.com/urbanjost/M_slices.git" }
```
## UNIT TESTS ![-](docs/images/testtube.gif)
   Running the example programs and test programs tests basic
   functionality. There is currently no unit tests, per-se.

