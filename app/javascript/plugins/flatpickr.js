import flatpickr from "flatpickr";

const datePicker = () => {
    flatpickr(".datepicker", {
        enableTime: true,
        altInput: true,
        altFormat: "F j, Y at H:i",
        dateFormat: "Y-m-d",
    });
}

export { datePicker }