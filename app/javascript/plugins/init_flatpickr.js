import flatpickr from "flatpickr";

const calendar = () => {
  const startDate = document.getElementById('booking_start_date');
  const endDate = document.getElementById('booking_end_date');
  if (startDate) {
    flatpickr(startDate, {});
    flatpickr(endDate, {});
  }
};

export { calendar };
