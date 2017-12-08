(function ($) {

    var __toCheckOnScroll = [];
    var __alreadyScrolling = false;

    function isAboveTheScreeMiddle(element) {
        var breakPoint = window.innerHeight * 0.5;
        var elPosition = {
            top: $(element)[0].getBoundingClientRect().top,
            bottom: $(element)[0].getBoundingClientRect().bottom
        };

        if (elPosition.top >= 0 && elPosition.top < breakPoint) {
            return true;
        } else {
            if (top < 0 && elPosition.bottom > 0) {
                return true;
            }

        }

        return false;
    }


    function getScrollToValue(elData) {
        var offset = (!isNaN(parseFloat(elData.options.offset))) ? elData.options.offset : elData.options.offset.call(elData.target);
        var scrollToValue = elData.target.offset().top - offset - $('body').offset().top;

        return scrollToValue;
    }


    function changeUrlHash(hash, timeout) {
        setTimeout(function () {
            if (hash && hash !== 'page-top') {
                hash = "#" + hash;
            } else {
                hash = " ";
            }
            if (history && history.replaceState) {
                history.replaceState({}, "", hash);
            } else {
            }
        }, timeout || 100);
        /* safari issue fixed by throtteling the event */
    }

    function scrollItem(elData) {
        if (__alreadyScrolling) {
            return;
        }

        __alreadyScrolling = true;
        var scrollToValue = getScrollToValue(elData);

        $('html, body').animate({scrollTop: scrollToValue}, {
                easing: 'linear',
                complete: function () {
                    // check for any updates
                    var scrollToValue = getScrollToValue(elData);
                    $('html, body').animate({scrollTop: scrollToValue}, {
                            easing: 'linear',
                            duration: 100,
                            complete: function () {
                                __alreadyScrolling = false;
                                changeUrlHash(elData.id);
                            }
                        }
                    )
                }
            }
        );
    }

    function getPageBaseUrl() {
        return [location.protocol, '//', location.host, location.pathname].join('');
    }

    function fallbackUrlParse(url) {
        return url.split('?')[0].split('#')[0];
    }

    function getABaseUrl(element) {
        var href = jQuery(element)[0].href || "";
        var url = "#";

        try {

            var _url = new window.URL(href);
            url = [_url.protocol, '//', _url.host, _url.pathname].join('');

        } catch (e) {
            url = fallbackUrlParse(href);
        }

        return url;
    }

    function getTargetForEl(element) {
        var targetId = (element.attr('href') || "").split('#').pop(),
            hrefBase = getABaseUrl(element),
            target = null,
            pageURL = getPageBaseUrl();


        if (hrefBase.length && hrefBase !== pageURL) {
            return target;
        }

        if (targetId.trim().length) {
            try {
                target = $('[id="' + targetId + '"]');
            } catch (e) {
                console.log('error scrollSpy', e);
            }
        }

        if (target && target.length) {
            return target;
        }

        return null;
    }

    $.fn.smoothScrollAnchor = function (options) {
        var elements = $(this);

        options = jQuery.extend({
            offset: 0
        }, options);

        elements.each(function () {
            var element = $(this);

            var target = options.target || getTargetForEl(element);
            if (target && target.length) {

                var elData = {
                    element: element,
                    options: options,
                    target: target,
                    targetSel: options.targetSel || '[id="' + target.attr('id').trim() + '"]',
                    id: (target.attr('id') || '').trim()
                };

                element.off('click').on('click', function (event) {
                    event.preventDefault();
                    event.stopPropagation();
                    scrollItem(elData);
                });
            }
        });
    };

    $.fn.scrollSpy = function (options) {
        var elements = $(this);

        elements.each(function () {
            var element = $(this);
            options = jQuery.extend({
                onChange: function () {
                },
                onLeave: function () {
                },
                smoothScrollAnchor: false,
                offset: 0
            }, options);

            if (element.is('a') && (element.attr('href') || "").indexOf('#') !== -1) {

                var target = getTargetForEl(element);

                if (target) {
                    var elData = {
                        element: element,
                        options: options,
                        target: target,
                        targetSel: '[id="' + target.attr('id').trim() + '"]',
                        id: target.attr('id').trim()

                    };
                    __toCheckOnScroll.push(elData);
                    element.data('scrollSpy', elData);

                    if (options.smoothScrollAnchor) {
                        element.smoothScrollAnchor({
                            offset: options.offset
                        });
                    }
                }
            }
        })
    };


    function update() {
        __toCheckOnScroll.forEach((function (item) {
            if (item.target && isAboveTheScreeMiddle(item.target) && $.contains(document, item.element[0])) {
                changeUrlHash(item.id, 5);
                item.options.onChange.call(item.element);
            } else {
                item.options.onLeave.call(item.element);
            }
        }));
    }

    $(window).scroll(update);

    $(window).bind('smoothscroll.update', update);

    $(function () {
        var hash = window.location.hash.replace('#', '');
        var currentItem = __toCheckOnScroll.filter(function (item) {
            return item.targetSel === '[id="' + hash.trim() + '"]';
        });

        $(window).on('load', function () {
            if (currentItem.length) {
                scrollItem(currentItem[0]);
            }
            update();
        });
    });

})(jQuery);


