<script type="text/javascript" src="js/slider/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/slider/jssor.slider-21.1.5.mini.js"></script>
<!-- use jssor.slider-21.1.5.debug.js instead for debug -->
<script>
    jQuery(document).ready(function ($) {

    var jssor_1_SlideoTransitions = [
        [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
        [{b:1900,d:2000,x:-379,e:{x:7}}],
        [{b:1900,d:2000,x:-379,e:{x:7}}],
        [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
    ];

    var jssor_1_options = {
        $AutoPlay: true,
        $SlideDuration: 800,
        $SlideEasing: $Jease$.$OutQuint,
        $CaptionSliderOptions: {
            $Class: $JssorCaptionSlideo$,
            $Transitions: jssor_1_SlideoTransitions
        },
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
        },
        $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$
        }
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizing
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        } else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    //responsive code end
});
</script>

<style>

/* jssor slider bullet navigator skin 05 css */
/*
.jssorb05 div           (normal)
.jssorb05 div:hover     (normal mouseover)
.jssorb05 .av           (active)
.jssorb05 .av:hover     (active mouseover)
.jssorb05 .dn           (mousedown)
*/
.jssorb05 {
    position: absolute;
}
.jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
    position: absolute;
    /* size of bullet elment */
    width: 16px;
    height: 16px;
    background: url('img/slider/b05.png') no-repeat;
    overflow: hidden;
    cursor: pointer;
}
.jssorb05 div { background-position: -7px -7px; }
.jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
.jssorb05 .av { background-position: -67px -7px; }
.jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

/* jssor slider arrow navigator skin 22 css */
/*
.jssora22l                  (normal)
.jssora22r                  (normal)
.jssora22l:hover            (normal mouseover)
.jssora22r:hover            (normal mouseover)
.jssora22l.jssora22ldn      (mousedown)
.jssora22r.jssora22rdn      (mousedown)
*/
.jssora22l, .jssora22r {
    display: block;
    position: absolute;
    /* size of arrow element */
    width: 40px;
    height: 58px;
    cursor: pointer;
    background: url('img/slider/a22.png') center center no-repeat;
    overflow: hidden;
}
.jssora22l { background-position: -10px -31px; }
.jssora22r { background-position: -70px -31px; }
.jssora22l:hover { background-position: -130px -31px; }
.jssora22r:hover { background-position: -190px -31px; }
.jssora22l.jssora22ldn { background-position: -250px -31px; }
.jssora22r.jssora22rdn { background-position: -310px -31px; }
</style>

<div id="jssor_1" style="position: relative; margin: 0 auto; top: -20px; left: 0px; width: 1300px; height: 300px; overflow: hidden; visibility: hidden;">
    <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 1300px; height: 300px; overflow: hidden;">
        <div data-p="225.00" style="display: none;">
            <img data-u="image" src="img/slider/placeholder.jpg" />
            <div data-u="caption" data-t="0" style="position: absolute; top: 0px; left: 0px; width: 1300px; height: 300px;">
                <!-- First row of flags -->
                <a href="lande/argentina.php"><img style="position: absolute; top: 0px; left: 0px; width: 144.44px; height: 100px;" src="img/flags/argentina.png" /></a>
                <a href="lande/belgium.php"><img style="position: absolute; top: 0px; left: 144.44px; width: 144.44px; height: 100px;" src="img/flags/belgium.png" /></a>
                <a href="lande/brazil.php"><img style="position: absolute; top: 0px; left: 288.88px; width: 144.44px; height: 100px;" src="img/flags/brazil.png" /></a>
                <a href="lande/canada"><img style="position: absolute; top: 0px; left: 433.32px; width: 144.44px; height: 100px;" src="img/flags/canada.png" /></a>
                <a href="lande/chile.php"><img style="position: absolute; top: 0px; left: 577.76px; width: 144.44px; height: 100px;" src="img/flags/chile.png" /></a>
                <a href="lande/congo.php"><img style="position: absolute; top: 0px; left: 722.2px; width: 144.44px; height: 100px;" src="img/flags/congo.png" /></a>
                <a href="lande/egypt.php"><img style="position: absolute; top: 0px; left: 866.64px; width: 144.44px; height: 100px;" src="img/flags/egypt.png" /></a>
                <a href="lande/hungary.php"><img style="position: absolute; top: 0px; left: 1011.08px; width: 144.44px; height: 100px;" src="img/flags/hungary.png" /></a>
                <a href="lande/iceland.php"><img style="position: absolute; top: 0px; left: 1155.52px; width: 144.44px; height: 100px;" src="img/flags/iceland.png" /></a>
                <!-- Second row of flags -->
                <a href="lande/india.php"><img style="position: absolute; top: 100px; left: 0px; width: 144.44px; height: 100px;" src="img/flags/india.jpg" /></a>
                <a href="lande/indonesia.php"><img style="position: absolute; top: 100px; left: 144.44px; width: 144.44px; height: 100px;" src="img/flags/indonesia.png" /></a>
                <a href="lande/italy.php"><img style="position: absolute; top: 100px; left: 288.88px; width: 144.44px; height: 100px;" src="img/flags/italy.gif" /></a>
                <a href="lande/japan.php"><img style="position: absolute; top: 100px; left: 433.32px; width: 144.44px; height: 100px;" src="img/flags/japan.png" /></a>
                <img style="position: absolute; top: 100px; left: 577.76px; width: 144.44px; height: 100px;" src="img/#.png" />
                <a href="lande/malaysia.php"><img style="position: absolute; top: 100px; left: 722.2px; width: 144.44px; height: 100px;" src="img/flags/malaysia.png" /></a>
                <a href="lande/mexico.php"><img style="position: absolute; top: 100px; left: 866.64px; width: 144.44px; height: 100px;" src="img/flags/mexico.png" /></a>
                <a href="lande/netherland.php"><img style="position: absolute; top: 100px; left: 1011.08px; width: 144.44px; height: 100px;" src="img/flags/netherland.png" /></a>
                <a href="lande/norway.php"><img style="position: absolute; top: 100px; left: 1155.52px; width: 144.44px; height: 100px;" src="img/flags/norway.png" /></a>
                <!-- Third row of flags -->
                <a href="lande/peru.php"><img style="position: absolute; top: 200px; left: 0px; width: 144.44px; height: 100px;" src="img/flags/peru.png" /></a>
                <a href="poland.php"><img style="position: absolute; top: 200px; left: 144.44px; width: 144.44px; height: 100px;" src="img/flags/poland.png" /></a>
                <a href="lande/spain.php"><img style="position: absolute; top: 200px; left: 288.88px; width: 144.44px; height: 100px;" src="img/flags/spain.png" /></a>
                <a href="lande/sweden.php"><img style="position: absolute; top: 200px; left: 433.32px; width: 144.44px; height: 100px;" src="img/flags/sweden.png" /></a>
                <a href="lande/thailand.php"><img style="position: absolute; top: 200px; left: 577.76px; width: 144.44px; height: 100px;" src="img/flags/thailand.png" /></a>
                <a href="lande/usa.php"><img style="position: absolute; top: 200px; left: 722.2px; width: 144.44px; height: 100px;" src="img/flags/usa.gif" /></a>
                <a href="lande/vietnam.php"><img style="position: absolute; top: 200px; left: 866.64px; width: 144.44px; height: 100px;" src="img/flags/vietnam.png" /></a>
                <a href="lande/china.php"><img style="position: absolute; top: 200px; left: 1011.08px; width: 144.44px; height: 100px;" src="img/flags/china.png" /></a>
                <a href="kenya.php"><img style="position: absolute; top: 200px; left: 1155.52px; width: 144.44px; height: 100px;" src="img/flags/kenya.png" /></a>
            </div>
        </div>
        <div data-p="225.00" style="display: none;">
            <img data-u="image" src="img/slider/slider2.jpg" />
        </div>
        <div data-p="225.00" style="display: none;">
            <img data-u="image" src="img/slider/placeholder.jpg" />
        </div>
    </div>
    <!-- Bullet Navigator -->
    <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
        <!-- bullet navigator item prototype -->
        <div data-u="prototype" style="width:16px;height:16px;"></div>
    </div>
    <!-- Arrow Navigator -->
    <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
    <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
</div>
<!-- #endregion Jssor Slider End -->
