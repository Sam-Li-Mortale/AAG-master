
function updateEvent(event, element) {
    $("#ContentPlaceHolder1_txtID").val(event.id);
    $("#ContentPlaceHolder1_txtEventTitle").val(event.title);
    $("#ContentPlaceHolder1_txtEventStart").val(event.start.format("MM/DD/YYYY hh:mm A"));
    $("#ContentPlaceHolder1_txtEventEnd").val(event.end.format("MM/DD/YYYY hh:mm A"));
    $("#ContentPlaceHolder1_eventDescription").val(event.description);
    $('#calendarEventModal').modal('show');
}

function addEvent(start, end, jsEvent, view) {
    $("#ContentPlaceHolder1_txtAddEventTitle").val(" ");
    $("#ContentPlaceHolder1_eventAddDescription").val(" ");
    $("#ContentPlaceHolder1_txtAddEventStart").val(start.format("MM/DD/YYYY hh:mm A"));
    $("#ContentPlaceHolder1_txtAddEventEnd").val(end.format("MM/DD/YYYY hh:mm A"));
    $('#addCalendarEventModal').modal('show');
}

$(document).ready(function () {

    var date = new Date();
    var d = date.getDate(),
        m = date.getMonth(),
        y = date.getFullYear();

    $('#admin-calendar').fullCalendar({
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
        selectable: true,
        events: "JsonEventResponse.ashx",
        eventClick: updateEvent,
        select: addEvent
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