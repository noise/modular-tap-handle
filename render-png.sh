echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Rendering PNG images <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
openscad  --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean \
    modular-tap-handle.scad -o img/tap-handle-all.png -D 'parts=["base","top"]'
openscad  --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean \
    modular-tap-handle.scad -o img/tap-top-apple.png -D 'parts=["top"]' -D 'icon="apple"'
openscad  --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean \
    modular-tap-handle.scad -o img/tap-top-barley.png -D 'parts=["top"]' -D 'icon="barley"'
openscad  --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean \
    modular-tap-handle.scad -o img/tap-top-hops.png -D 'parts=["top"]' -D 'icon="hops"'
openscad  --render --imgsize=1600,1600 --projection=p --viewall --colorscheme=DeepOcean --preview=throwntogether \
    modular-tap-handle.scad -o img/tap-handle-base.png -D 'parts=["base"]' 
