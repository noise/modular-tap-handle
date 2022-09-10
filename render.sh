echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Rendering STLs <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
openscad modular-tap-handle.scad -o stl/tap-handle-base.stl -D 'parts=["base"]'
openscad modular-tap-handle.scad -o stl/tap-top-apple.stl -D 'parts=["top"]' -D 'icon="apple"'
openscad modular-tap-handle.scad -o stl/tap-top-barley.stl -D 'parts=["top"]' -D 'icon="barley"'
openscad modular-tap-handle.scad -o stl/tap-top-h2o.stl -D 'parts=["top"]' -D 'icon="h2o"'
openscad modular-tap-handle.scad -o stl/tap-top-hops.stl -D 'parts=["top"]' -D 'icon="hops"'
openscad modular-tap-handle.scad -o stl/tap-handle-all.stl -D 'parts=["base","top"]'
