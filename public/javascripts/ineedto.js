// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var verb;
var noun;
var extra = "";

function reset_all() {
    $("#noun").hide();
    $("#extra").hide();
    $("#solutions").hide();
    noun = "";
    extra = "";
    $("select#x_noun").html("");
    $("select#x_extra").html("");
    $("#solutions").html("");
};

function getSolutions(extra) {
    $("#solutions").html("");
    if (extra == "" || extra == "none") {
        $("#solutions").load("/solutions/get_for_noun_verb", {
            verb:verb,
            noun:noun
        });
        $("#extra").hide();
    }
    else {
        $("#solutions").load("/solutions/get_for_extra_noun_verb", {
            verb:verb,
            noun:noun,
            extra:extra
        });
    }
    $("#solutions").show();
};

function processNoun(noun) {
    $("select#x_extra").html("");
    extra = "";
    if (noun == "") {
        reset_all();
        $("#x_verb").attr({selectedIndex: 0});
    }
    else {
        $("select#x_extra").load("/extras/get_for_noun_verb",
        {
            verb:verb,
            noun:noun
        }, function (response, status, xhr) {
            if (status == 'error') {
            }
            else {
                $("#extra").show();
            }
        });
        getSolutions("");
    }
};

$(function() {
    verb = "";
    reset_all();
    $("select#x_verb").change(function () {
        reset_all();
        $("select#x_verb option:selected").each(function () {
            verb = $(this).text();
        });
        if (verb == "") {
            reset_all();
        }
        else {
            $("select#x_noun").load("/nouns/get_for_verb", {
                verb:verb
            });
            $("#noun").show();
        }
    });

    $("select#x_noun").change(function () {
        $("select#x_noun option:selected").each(function () {
            noun = $(this).text();
        });
        processNoun(noun);
    });
    $("#x_noun_write_in").change(function () {
        noun = $(this).attr("value");
        processNoun(noun);
        return false;
    });

    $("select#x_extra").change(function () {
        $("select#x_extra option:selected").each(function () {
            extra = $(this).text();
        });
        getSolutions(extra);
    });
    $("#x_extra_write_in").change(function () {
        extra = $(this).attr('value');
        getSolutions(extra);
    });
});