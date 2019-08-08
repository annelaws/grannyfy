import places from 'places.js';

const initAutocomplete = () => {
  const locationInput = document.getElementById('grandma_location');
  if (locationInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
