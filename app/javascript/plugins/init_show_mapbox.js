import mapboxgl from 'mapbox-gl';

const addMarker = (map, marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
};

const fitMapToMarker = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initShowMapbox = () => {
  const showMapElement = document.getElementById('showmap');

  if (showMapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = showMapElement.dataset.mapboxApiKey;
    const showMap = new mapboxgl.Map({
      container: 'showmap',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const marker = JSON.parse(showMapElement.dataset.marker);
    addMarker(showMap, marker);
    fitMapToMarker(showMap, marker);
  }
};

export { initShowMapbox };
