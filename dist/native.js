var scene, camera, renderer, stars;

function init() {
    scene = new THREE.Scene();
    camera = new THREE.PerspectiveCamera(75 ,
                                         window.innerWidth / window.innerHeight ,
                                         1, 1000);
    renderer = new THREE.WebGLRenderer();
    stars = new THREE.Object3D();
    renderer.setSize(window.innerWidth, window.innerHeight);
    camera.position.set(-30, 40, 30);
    camera.lookAt(scene.position);
    addStars(500);
    scene.add(stars);
    document.getElementById("main").appendChild(renderer.domElement);
    renderScene();
    function renderScene() {
        stars.rotation.x += 0.00125;
        stars.rotation.y += 0.005;
        stars.rotation.z += 0.0025;
        requestAnimationFrame(renderScene);
        renderer.render(scene, camera);
    }
}

function addStars(numStars) {
    for(var i = 0; i < numStars; i++) {
	var texture = new THREE.Texture( radialGradientTexture() );
	texture.needsUpdate = true;
        var mat = new THREE.SpriteMaterial( { map: texture, transparent: false } );
        var spr = new THREE.Sprite(mat);
        spr.position.x = Math.random() * 200 - 100;
        spr.position.y = Math.random() * 200 - 100;
        spr.position.z = Math.random() * 200 - 100;
        stars.add(spr);
    }
}

function radialGradientTexture() {
    var size = 16;
    canvas = document.createElement( 'canvas' );
    canvas.width = size;
    canvas.height = size;

    var ctx = canvas.getContext( '2d' );
    var gradient = ctx.createRadialGradient(8, 8, 0, 8, 8, 8);
    gradient.addColorStop(0,    'rgba(255,255,255,.8)' );
    gradient.addColorStop(0.4,  'rgba(0,128,128,.6)' );
    gradient.addColorStop(0.5,  'rgba(0,0,128,.6)' );
    gradient.addColorStop(0.6,  'rgba(0,0,64,.4)' );
    gradient.addColorStop(1,    'rgba(0,0,0,.2)' );

    ctx.fillStyle = gradient;
    ctx.fillRect(0, 0, 16, 16); 
    return canvas;
}

window.onload = init

