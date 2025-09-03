$(document).ready(function() {
    var typed = new Typed(".typing", {
        strings: [
            "",
            "Web",
            "Web Designer",
            "Web Developer",
            "Content Creator",
        ],
        typeSpeed: 100,
        BackSpeed: 60,
        loop: true,
    });

    // Aside navigation
    const $nav = $(".nav"),
        $navList = $nav.find("li"),
        totalNavList = $navList.length,
        $allSection = $(".section"),
        totalSection = $allSection.length;

    $navList.find("a").on("click", function(e) {
        e.preventDefault();
        
        $allSection.removeClass("back-section");
        
        $navList.find("a.active").each(function(i) {
            $allSection.eq(i).addClass("back-section");
        });
        
        $navList.find("a").removeClass("active");
        
        $(this).addClass("active");
        
        showSection(this);
        
        if (window.innerWidth < 1200) {
            asideSectionTogglerBtn();
        }
    });

    function showSection(element) {
        $allSection.removeClass("active");
        const target = $(element).attr("href").split("#")[1];
        $("#" + target).addClass("active");
    }

    $(".hire-me").on("click", function(e) {
        e.preventDefault();
        showSection(this);
        updateNav(this);
    });

    function updateNav(element) {
        $navList.find("a").removeClass("active");
        const target = $(element).attr("href").split("#")[1];
        
        $navList.find("a").each(function() {
            const hrefTarget = $(this).attr("href").split("#")[1];
            if (hrefTarget === target) {
                $(this).addClass("active");
            }
        });
    }

    // Nav toggler button
    const $navTogglerBtn = $(".nav-toggler"),
        $aside = $(".aside");
    
    $navTogglerBtn.on("click", asideSectionTogglerBtn);

    function asideSectionTogglerBtn() {
        $aside.toggleClass("open");
        $navTogglerBtn.toggleClass("open");
    }

    // Close aside when clicking outside
    $(document).on("click", function(e) {
        if (
            !$(e.target).closest($aside).length && 
            !$(e.target).closest($navTogglerBtn).length &&
            $aside.hasClass("open")
        ) {
            $aside.removeClass("open");
            $navTogglerBtn.removeClass("open");
        }
    });
});
