import "bootstrap";
// import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
import 'flatpickr/dist/flatpickr.min.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import { checkbox } from '../components/checkbox';
import { calendar } from '../plugins/init_flatpickr';

initMapbox();
calendar();
checkbox();