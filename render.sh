openscad -o stl/tap-handle-base.stl modular-tap-handle.scad -D 'parts=["base"]'
openscad -o stl/tap-top-apple.stl modular-tap-handle.scad -D 'parts=["top"]' -D 'icon="apple"'
openscad -o stl/tap-top-barley.stl modular-tap-handle.scad -D 'parts=["top"]' -D 'icon="barley"'
openscad -o stl/tap-top-hops.stl modular-tap-handle.scad -D 'parts=["top"]' -D 'icon="hops"'
openscad -o stl/tap-handle-all.stl modular-tap-handle.scad -D 'parts=["top","base"]'
