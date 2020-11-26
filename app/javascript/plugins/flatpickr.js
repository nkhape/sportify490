import flatpickr from "flatpickr";

flatpickr(".datepicker", {
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y at H:i",
    dateFormat: "Y-m-d",
});
