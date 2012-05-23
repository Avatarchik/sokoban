Sokoban
=======

WebGL implementation of Sokoban using jax (http://guides.jaxgl.com/).
Jax is a special gem for rails that enables nice WebGL implementation using a rails-style stucture

DEMO
----

Try it here : http://www.sokoban.be

![Image](https://github.com/MichaelHoste/sokoban/raw/master/sokoban.png)

TO DO
-----

 * Save list of friends "facebook_id" and draw the pictures above the title.
 * Push the packs/levels in the database and map the javascripts methods.
 * Override the level render method : include the squares render inside. Move it out of the levelcontroller so it will be easier to translate and rotate the entire level. It will also be easier to manage the memory of the entire level at one point.
 * Find why the textures are so pale (and why some color disappeared)
 * Implement basic deadlock detection in coffeescript (corners, 2 boxes etc.)
 * Implement advanced deadlock detection in coffeescript if fast enough (prototype algorithm of dead zone)