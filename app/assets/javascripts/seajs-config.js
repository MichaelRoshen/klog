seajs.config({
    alias: {
        '$': 'gallery/jquery/1.8.3/jquery',
        '_': 'gallery/underscore/1.4.4/underscore',
        'backbone': 'gallery/backbone/0.9.10/backbone',
        'swfupload': 'gallery/swfupload/2.2.0/swfupload',
        'events': 'gallery/events/1.0.0/events',
        'tab': 'gallery/tab/0.0.1/tab',
        'modal': 'gallery/modal/0.0.1/modal',
        'jquery-ujs': 'gallery/jquery-ujs/2.2.1/jquery-ujs',
        'jquery.color': 'jquery/color/2.1.2/color'
    },
    plugins: [seajs.production ? '' : 'text']
});