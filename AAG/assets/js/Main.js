function displayEvent(event, element) {
    //alert(event.description);
    $("#calendarEventLabel").html(event.title);
    $("#lblEventStartDate").html(event.start.format("MM/DD/YYYY hh:mm A"));
    $("#lblEventEndDate").html(event.end.format("MM/DD/YYYY hh:mm A"));
    $("#lblEventDescription").html(event.description);
    $('#calendarEventModal').modal('show');
}

$(document).ready(function () {
    $(function () {
        $('[data-toggle="popover"]').popover()
    })

    $('.datetimepickerStart').datetimepicker();
    $('.datetimepickerEnd').datetimepicker();

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    $('#homepage-calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        buttonText: {
            today: 'today',
            month: 'month',
            week: 'week',
            day: 'day'
        },
        events: "JsonEventResponse.ashx",
        eventClick: displayEvent
    });

    $(function () {
        $(document).on('change', ':file', function () {
            var input = $(this),
                numFiles = input.get(0).files ? input.get(0).files.length : 1,
                label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
            input.trigger('fileselect', [numFiles, label]);
        });
        $(document).ready(function () {
            $(':file').on('fileselect', function (event, numFiles, label) {
                var input = $(this).parents('.input-group').find(':text'),
                    log = numFiles > 1 ? numFiles + ' files selected' : label;

                if (input.length) {
                    input.val(log);
                } else {
                    if (log) alert(log);
                }
            });
        });
    });
});
