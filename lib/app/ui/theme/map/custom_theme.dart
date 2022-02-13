Map<String, dynamic> customThemeData() {
// ## Code License
// The Mapbox GL Style JSON file is originally derived from [OSM Bright from
// Mapbox Open Styles](https://github.com/mapbox/mapbox-gl-styles/blob/master/LICENSE.md).
// The modified Mapbox GL Style JSON retains the same BSD license.
//
// > Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
// > * Redistributions of source code must retain the above copyright notice, this
// list of conditions and the following disclaimer.
// * Redistributions in binary form must reproduce the above copyright notice, this
// list of conditions and the following disclaimer in the documentation and/or other
// materials provided with the distribution.
// * Neither the name of Mapbox nor the names of its contributors may be used to
// endorse or promote products derived from this software without specific prior
// written permission.
//
// > THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
// NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//
// ## Design License
//
// The look and feel of the OSM liberty map design is also derived
// (although heavily altered) from [OSM Bright from Mapbox Open Styles](https://github.com/mapbox/mapbox-gl-styles/blob/master/LICENSE.md)
// which is licensed under the Creative Commons Attribution 3.0 license.
//
// The map is displaying and styling the data from [OpenMapTiles](https://openmaptiles.org/)
// with [CC-BY 4.0 design license](https://github.com/openmaptiles/openmaptiles/blob/master/LICENSE.md).
//
// The products or services using this map style need to visibly credit "OpenMapTiles.org"
// or reference "OpenMapTiles" with a link to http://openmaptiles.org/. For a browsable
// electronic map based on OpenMapTiles and OpenStreetMap data, the credit should appear
// in the corner of the map. For example:
//
// [© OpenMapTiles](https://openmaptiles.org/)
// [© OpenStreetMap contributors](https://www.openstreetmap.org/copyright)
//
// For printed and static maps a similar attribution should be made in a textual
// description near the image, in the same fashion as if you cite a photograph.
//
// ## Icons
//
// OSM Liberty is using the [Maki POI icon set](https://github.com/mapbox/maki/blob/master/LICENSE.txt)
// which is licensed under CC0 1.0 Universal.
//
// The right arrow was derived from [Wikipedia][wiki_arrow] which is in the public
// domain.
//
// [wiki_arrow]: https://commons.wikimedia.org/wiki/File:Arrowright.svg
//
// ## Fonts
//
// OSM Liberty is using the Roboto font family (Copyright 2011 Google).
// Roboto is licensed under the [Apache License, Version 2.0](https://github.com/google/roboto/blob/master/LICENSE).
// https://github.com/maputnik/osm-liberty/blob/gh-pages/LICENSE.md
// https://github.com/maputnik/osm-liberty
  return {
    "version": 8,
    "id": "423e3dfa-d3ca-45b1-9639-72af7b1074fa",
    "name": "Streets",
    "sources": {
      "openmaptiles": {
        "url":
            "https://api.maptiler.com/tiles/v3-openmaptiles/tiles.json?key=v1rrCATS7vfrfH1Ks78f",
        "type": "vector"
      },
      "maptiler_attribution": {
        "attribution":
            "<a href=\"https://www.maptiler.com/copyright/\" target=\"_blank\">&copy; MapTiler</a> <a href=\"https://www.openstreetmap.org/copyright\" target=\"_blank\">&copy; OpenStreetMap contributors</a>",
        "type": "vector"
      }
    },
    "layers": [
      // {
      //   "id": "background",
      //   "type": "background",
      //   "paint": {"background-color": "rgb(226, 226, 226)"}
      // },
      {
        "id": "landcover_cropland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgb(255, 255, 255)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "crop"]
        ]
      },
      {
        "id": "landcover_grassland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "paint": {
          "fill-color": "rgb(255, 255, 255)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "grass"]
        ]
      },
      {
        "id": "landcover_scrubland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "paint": {
          "fill-color": "rgb(248, 248, 248)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "scrub"]
        ]
      },
      {
        "id": "landcover_treeland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "paint": {
          "fill-color": "rgb(241, 241, 241)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "tree"]
        ]
      },
      {
        "id": "landcover_forestland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "paint": {
          "fill-color": "rgb(237, 237, 237)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "forest"]
        ]
      },
      {
        "id": "landcover_snowland",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "globallandcover",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgb(255, 255, 255)",
          "fill-opacity": {
            "base": 1,
            "stops": [
              [4, 1],
              [8, 0]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "class", "snow"]
        ]
      },
      {
        "id": "park_outline",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "park",
        "minzoom": 9,
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgb(154, 154, 154)",
          "line-width": {
            "stops": [
              [9, 0.5],
              [14, 2]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [1, 1.5]
        },
        "filter": ["all"]
      },
      {
        "id": "landuse_residential",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "maxzoom": 24,
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": {
            "stops": [
              [9, "rgba(228, 228, 228, 0.8)"],
              [12, "rgba(228, 228, 228, 0.55)"],
              [16, "rgba(228, 228, 228, 0.35)"]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "residential", "suburbs", "neighbourhood"]
        ]
      },
      {
        "id": "landcover_wood",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landcover",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgba(171, 171, 171, 0.7)",
          "fill-opacity": 0.4,
          "fill-antialias": false
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "wood"]
        ]
      },
      {
        "id": "landcover_grass",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landcover",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgb(204, 204, 204)",
          "fill-opacity": 0.3,
          "fill-antialias": false
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "grass"]
        ]
      },
      {
        "id": "landuse_cemetery",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(213, 213, 213)"},
        "metadata": {},
        "filter": ["==", "class", "cemetery"]
      },
      {
        "id": "landuse_hospital",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(241, 241, 241)"},
        "metadata": {},
        "filter": ["==", "class", "hospital"]
      },
      {
        "id": "landuse_school",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(228, 228, 228)"},
        "metadata": {},
        "filter": ["==", "class", "school"]
      },
      {
        "id": "landuse_stadium",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(228, 228, 228)"},
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "stadium", "pitch", "track"]
        ]
      },
      {
        "id": "landuse_garages",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgba(236, 236, 236, 1)"},
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "garages"]
        ]
      },
      {
        "id": "landuse_dam",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landuse",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgba(209, 212, 190, 1)"},
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "dam"]
        ]
      },
      {
        "id": "waterway_tunnel",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "minzoom": 14,
        "layout": {"line-cap": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(222, 222, 222)",
          "line-width": {
            "base": 1.3,
            "stops": [
              [13, 0.5],
              [20, 6]
            ]
          },
          "line-dasharray": [2, 4]
        },
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "waterway_river",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(222, 222, 222)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [11, 0.5],
              [20, 6]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "river"],
          ["!=", "brunnel", "tunnel"],
          ["!=", "intermittent", 1]
        ]
      },
      {
        "id": "waterway_river_intermittent",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "round"},
        "paint": {
          "line-color": "#a0c8f0",
          "line-width": {
            "base": 1.2,
            "stops": [
              [11, 0.5],
              [20, 6]
            ]
          },
          "line-dasharray": [3, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "river"],
          ["!=", "brunnel", "tunnel"],
          ["==", "intermittent", 1]
        ]
      },
      {
        "id": "waterway_other",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(222, 222, 222)",
          "line-width": {
            "base": 1.3,
            "stops": [
              [13, 0.5],
              [20, 6]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!=", "class", "river"],
          ["!=", "brunnel", "tunnel"],
          ["!=", "intermittent", 1]
        ]
      },
      {
        "id": "waterway_other_intermittent",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "round", "visibility": "visible"},
        "paint": {
          "line-color": "#a0c8f0",
          "line-width": {
            "base": 1.3,
            "stops": [
              [13, 0.5],
              [20, 6]
            ]
          },
          "line-dasharray": [4, 3]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!=", "class", "river"],
          ["!=", "brunnel", "tunnel"],
          ["==", "intermittent", 1]
        ]
      },
      {
        "id": "water_intermittent",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "water",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(234, 234, 234)", "fill-opacity": 0.85},
        "metadata": {},
        "filter": [
          "all",
          ["==", "intermittent", 1]
        ]
      },
      {
        "id": "water",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "water",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(214, 214, 214)"},
        "metadata": {},
        "filter": [
          "all",
          ["!=", "intermittent", 1],
          ["!=", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "landcover_sand",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "landcover",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgb(214, 214, 214)",
          "fill-opacity": 1,
          "fill-antialias": false
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "sand"]
        ]
      },
      {
        "id": "landcover_sand_outline",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "landcover",
        "layout": {"visibility": "visible"},
        "paint": {"line-color": "rgb(214, 214, 214)", "line-width": 2},
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "sand"]
        ]
      },
      {
        "id": "aeroway_fill",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "aeroway",
        "minzoom": 11,
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(233, 233, 233)", "fill-opacity": 0.7},
        "metadata": {},
        "filter": ["==", "\$type", "Polygon"]
      },
      {
        "id": "aeroway_runway",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "aeroway",
        "minzoom": 11,
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [11, 3],
              [20, 16]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "class", "runway"]
        ]
      },
      {
        "id": "aeroway_taxiway",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "aeroway",
        "minzoom": 11,
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [11, 0.5],
              [20, 6]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "class", "taxiway"]
        ]
      },
      {
        "id": "ferry",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(167, 167, 167)",
          "line-width": 1.1,
          "line-dasharray": [2, 2]
        },
        "filter": [
          "all",
          ["in", "class", "ferry"]
        ]
      },
      {
        "id": "tunnel_motorway_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [0.5, 0.25]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "ramp", 1],
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "tunnel_service_track_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [15, 1],
              [16, 4],
              [20, 11]
            ]
          },
          "line-dasharray": [0.5, 0.25]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "tunnel_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "ramp", "1"],
          ["==", "brunnel", "tunnel"],
          [">", "layer", 0]
        ]
      },
      {
        "id": "tunnel_street_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 0.5],
              [13, 1],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": {
            "stops": [
              [12, 0],
              [12.5, 1]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "street", "street_limited"]
        ]
      },
      {
        "id": "tunnel_secondary_tertiary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(234, 234, 234)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [8, 1.5],
              [20, 17]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [0.5, 0.25]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "secondary", "tertiary"]
        ]
      },
      {
        "id": "tunnel_trunk_primary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          },
          "line-dasharray": [0.5, 0.25]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "tunnel_motorway_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          },
          "line-dasharray": [0.5, 0.25]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "tunnel_path_pedestrian",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgba(233, 233, 233, 0.45)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [14, 0.5],
              [20, 6]
            ]
          },
          "line-dasharray": [1, 0.75]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "brunnel", "tunnel"],
          ["in", "class", "path", "pedestrian"]
        ]
      },
      {
        "id": "tunnel_motorway_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(238, 238, 238)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway_link"],
          ["==", "ramp", 1],
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "tunnel_service_track",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [15.5, 0],
              [16, 2],
              [20, 7.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "tunnel_service_track_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [15.5, 0],
              [16, 2],
              [20, 7.5]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "service_construction", "track_construction"]
        ]
      },
      {
        "id": "tunnel_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "ramp", "1"],
          ["==", "brunnel", "tunnel"],
          [">", "layer", 0]
        ]
      },
      {
        "id": "tunnel_minor",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13.5, 0],
              [14, 2.5],
              [20, 11.5]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "minor"]
        ]
      },
      {
        "id": "tunnel_minor_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13.5, 0],
              [14, 2.5],
              [20, 11.5]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "minor_construction"]
        ]
      },
      {
        "id": "tunnel_secondary_tertiary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "secondary", "tertiary"]
        ]
      },
      {
        "id": "tunnel_secondary_tertiary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "secondary_construction", "tertiary_construction"]
        ]
      },
      {
        "id": "tunnel_trunk_primary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "tunnel_trunk_primary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "primary_construction", "trunk_construction"]
        ]
      },
      {
        "id": "tunnel_motorway",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(253, 253, 253)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "tunnel_motorway_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(253, 253, 253)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway_construction"],
          ["==", "brunnel", "tunnel"]
        ]
      },
      {
        "id": "tunnel_major_rail",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14, 0.4],
              [15, 0.75],
              [20, 2]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["in", "class", "rail"]
        ]
      },
      {
        "id": "tunnel_major_rail_hatching",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14.5, 0],
              [15, 3],
              [20, 8]
            ]
          },
          "line-dasharray": [0.2, 8]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "tunnel"],
          ["==", "class", "rail"]
        ]
      },
      {
        "id": "road_area_pier",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(244, 244, 244)", "fill-antialias": true},
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Polygon"],
          ["==", "class", "pier"]
        ]
      },
      {
        "id": "road_pier",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-cap": "round", "line-join": "round"},
        "paint": {
          "line-color": "rgb(244, 244, 244)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [15, 1],
              [17, 4]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["in", "class", "pier"]
        ]
      },
      {
        "id": "road_area_bridge",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgba(244, 244, 244, 0.6)",
          "fill-antialias": true
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Polygon"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "road_area_pattern",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"visibility": "visible"},
        "paint": {"fill-pattern": "pedestrian_polygon"},
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Polygon"],
          ["!has", "brunnel"],
          ["!in", "class", "bridge", "pier"]
        ]
      },
      {
        "id": "road_service_track_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13, 1.5],
              [20, 11]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "road_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 13,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          [
            "!in",
            "class",
            "motorway",
            "trunk",
            "primary",
            "pedestrian",
            "path",
            "track",
            "service"
          ],
          ["==", "ramp", 1]
        ]
      },
      {
        "id": "road_trunk_primary_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "butt",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 0.7],
              [20, 14]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "ramp", 1],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "road_motorway_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 12,
        "layout": {
          "line-cap": "butt",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "motorway"],
          ["==", "ramp", 1]
        ]
      },
      {
        "id": "road_minor_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 0.7],
              [13, 1],
              [14, 4],
              [20, 16]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "minor"],
          ["!=", "ramp", "1"]
        ]
      },
      {
        "id": "road_secondary_tertiary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(234, 234, 234)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [8, 1.5],
              [20, 17]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "secondary", "tertiary"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "road_trunk_primary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "butt",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["!=", "ramp", 1],
          ["in", "class", "primary", "trunk"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "road_motorway_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {
          "line-cap": "butt",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "motorway"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "road_path_pedestrian",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 12,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgba(206, 206, 206, 0.45)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [16, 2],
              [20, 7.5]
            ]
          },
          "line-dasharray": [1, 1]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "path", "pedestrian"]
        ]
      },
      {
        "id": "road_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 13,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "ramp", 1],
          [
            "!in",
            "class",
            "motorway",
            "trunk",
            "primary",
            "pedestrian",
            "path",
            "track",
            "service"
          ]
        ]
      },
      {
        "id": "road_trunk_primary_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 0.5],
              [20, 10]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "ramp", 1],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "road_motorway_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 12,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(238, 238, 238)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "motorway"],
          ["==", "ramp", 1]
        ]
      },
      {
        "id": "road_service_track",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13, 1],
              [16, 2],
              [20, 7.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "road_service_track_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13, 1],
              [16, 2],
              [20, 7.5]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "service_construction", "track_construction"]
        ]
      },
      {
        "id": "road_minor",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.9, 0],
              [13, 1],
              [14, 2.5],
              [20, 13]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "minor"]
          ]
        ]
      },
      {
        "id": "road_minor_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [14, 2.5],
              [20, 18]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          [
            "all",
            ["!in", "brunnel", "bridge", "tunnel"],
            ["in", "class", "minor_construction"]
          ]
        ]
      },
      {
        "id": "road_secondary_tertiary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "secondary", "tertiary"]
        ]
      },
      {
        "id": "road_secondary_tertiary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "secondary_construction", "tertiary_construction"]
        ]
      },
      {
        "id": "road_trunk_primary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["!=", "ramp", 1],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "road_trunk_primary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["!=", "ramp", 1],
          ["in", "class", "primary_construction", "trunk_construction"]
        ]
      },
      {
        "id": "road_motorway",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": {
            "stops": [
              [5, "rgb(201, 201, 201)"],
              [6, "rgb(238, 238, 238)"]
            ]
          },
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "motorway"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "road_motorway_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": {
            "stops": [
              [5, "rgb(201, 201, 201)"],
              [6, "rgb(238, 238, 238)"]
            ]
          },
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "motorway_construction"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "road_major_rail",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14, 0.4],
              [15, 0.75],
              [20, 2]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "class", "rail"]
        ]
      },
      {
        "id": "road_major_rail_hatching",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14.5, 0],
              [15, 3],
              [20, 8]
            ]
          },
          "line-dasharray": [0.2, 8]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["==", "class", "rail"]
        ]
      },
      {
        "id": "road_minor_rail",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14, 0.4],
              [15, 0.75],
              [20, 2]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "subclass", "tram", "light_rail"]
        ]
      },
      {
        "id": "road_minor_rail_hatching",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14.5, 0],
              [15, 2],
              [20, 6]
            ]
          },
          "line-dasharray": [0.2, 4]
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "brunnel", "bridge", "tunnel"],
          ["in", "subclass", "tram", "light_rail"]
        ]
      },
      {
        "id": "building",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "building",
        "minzoom": 13,
        "maxzoom": 14,
        "layout": {"visibility": "visible"},
        "paint": {
          "fill-color": "rgba(173, 173, 173, 0.3)",
          "fill-outline-color": {
            "stops": [
              [13, "rgba(189, 189, 189, 0.32)"],
              [14, "rgb(189, 189, 189)"]
            ]
          }
        },
        "metadata": {}
      },
      {
        "id": "building-3d",
        "type": "fill",
        "source": "openmaptiles",
        "source-layer": "building",
        "minzoom": 14,
        "layout": {"visibility": "visible"},
        "paint": {"fill-color": "rgb(173, 173, 173)", "fill-opacity": 0.3},
        "metadata": {},
        "filter": [
          "all",
          ["!has", "hide_3d"]
        ]
      },
      {
        "id": "waterway-bridge-case",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "butt", "line-join": "miter"},
        "paint": {
          "line-color": "rgb(209, 209, 209)",
          "line-width": {
            "base": 1.6,
            "stops": [
              [12, 0.5],
              [20, 5]
            ]
          },
          "line-gap-width": {
            "base": 1.3,
            "stops": [
              [13, 0.5],
              [20, 6]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "waterway-bridge",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "waterway",
        "layout": {"line-cap": "round", "line-join": "round"},
        "paint": {
          "line-color": "rgb(214, 214, 214)",
          "line-width": {
            "base": 1.3,
            "stops": [
              [13, 0.5],
              [20, 6]
            ]
          }
        },
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_motorway_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "ramp", 1],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_service_track_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13, 1.5],
              [20, 11]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "bridge_link_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 1],
              [13, 3],
              [14, 4],
              [20, 15]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "link"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_street_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(231, 231, 231)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12, 0.5],
              [13, 1],
              [14, 4],
              [20, 25]
            ]
          },
          "line-opacity": {
            "stops": [
              [12, 0],
              [12.5, 1]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "street", "street_limited"]
        ]
      },
      {
        "id": "bridge_path_pedestrian_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "miter", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(247, 247, 247)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [14, 1.5],
              [20, 18]
            ]
          },
          "line-dasharray": [1, 0]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "brunnel", "bridge"],
          ["in", "class", "path", "pedestrian"]
        ]
      },
      {
        "id": "bridge_secondary_tertiary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(234, 234, 234)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [8, 1.5],
              [20, 17]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "secondary", "tertiary"]
        ]
      },
      {
        "id": "bridge_trunk_primary_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "bridge_motorway_casing",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(219, 219, 219)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0.4],
              [6, 0.7],
              [7, 1.75],
              [20, 22]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "brunnel", "bridge"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "bridge_path_pedestrian",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [14, 0.5],
              [20, 10]
            ]
          },
          "line-dasharray": [1, 0.3]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["==", "brunnel", "bridge"],
          ["in", "class", "path", "pedestrian"]
        ]
      },
      {
        "id": "bridge_motorway_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(238, 238, 238)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "ramp", 1],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_service_track",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13, 1],
              [16, 2],
              [20, 7.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "service", "track"]
        ]
      },
      {
        "id": "bridge_service_track_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [15.5, 0],
              [16, 2],
              [20, 7.5]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "service_construction", "track_construction"]
        ]
      },
      {
        "id": "bridge_link",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [12.5, 0],
              [13, 1.5],
              [14, 2.5],
              [20, 11.5]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "link"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_minor",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13.5, 0],
              [14, 2.5],
              [20, 18]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "minor"]
        ]
      },
      {
        "id": "bridge_minor_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [13.5, 0],
              [14, 2.5],
              [20, 18]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "minor_construction"]
        ]
      },
      {
        "id": "bridge_secondary_tertiary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "secondary", "tertiary"]
        ]
      },
      {
        "id": "bridge_secondary_tertiary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [6.5, 0],
              [8, 0.5],
              [20, 13]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "secondary_construction", "tertiary_construction"]
        ]
      },
      {
        "id": "bridge_trunk_primary",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "primary", "trunk"]
        ]
      },
      {
        "id": "bridge_trunk_primary_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(255, 255, 255)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "brunnel", "bridge"],
          ["in", "class", "primary_construction", "trunk_construction"]
        ]
      },
      {
        "id": "bridge_motorway",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(238, 238, 238)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway"],
          ["==", "brunnel", "bridge"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "bridge_motorway_construction",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 5,
        "layout": {"line-join": "round"},
        "paint": {
          "line-color": "rgb(238, 238, 238)",
          "line-width": {
            "base": 1.2,
            "stops": [
              [5, 0],
              [7, 1],
              [20, 18]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "motorway_construction"],
          ["==", "brunnel", "bridge"],
          ["!=", "ramp", 1]
        ]
      },
      {
        "id": "bridge_major_rail",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14, 0.4],
              [15, 0.75],
              [20, 2]
            ]
          }
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "rail"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "bridge_major_rail_hatching",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "paint": {
          "line-color": "rgb(230, 230, 230)",
          "line-width": {
            "base": 1.4,
            "stops": [
              [14.5, 0],
              [15, 3],
              [20, 8]
            ]
          },
          "line-dasharray": [0.2, 8]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "rail"],
          ["==", "brunnel", "bridge"]
        ]
      },
      {
        "id": "cablecar",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 13,
        "layout": {"line-cap": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(221, 221, 221)",
          "line-width": {
            "base": 1,
            "stops": [
              [13, 1],
              [19, 2]
            ]
          }
        },
        "filter": ["==", "class", "aerialway"]
      },
      {
        "id": "cablecar-dash",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 13,
        "layout": {
          "line-cap": "round",
          "line-join": "bevel",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(207, 207, 207)",
          "line-width": {
            "base": 1,
            "stops": [
              [13, 2],
              [19, 4]
            ]
          },
          "line-dasharray": [2, 2]
        },
        "filter": ["==", "class", "aerialway"]
      },
      {
        "id": "boundary_3",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 3,
        "layout": {"line-join": "round", "visibility": "visible"},
        "paint": {
          "line-color": "rgb(237, 237, 237)",
          "line-width": {
            "base": 1,
            "stops": [
              [4, 0.4],
              [5, 0.7],
              [12, 1.6]
            ]
          },
          "line-dasharray": [5, 3]
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "admin_level", 3, 4],
          ["==", "maritime", 0]
        ]
      },
      {
        "id": "boundary_2_z0-4",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 0,
        "maxzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(212, 212, 212)",
          "line-width": {
            "base": 1,
            "stops": [
              [3, 1],
              [5, 1.2]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["==", "maritime", 0],
          ["!has", "claimed_by"]
        ]
      },
      {
        "id": "boundary_2_z0-4_maritime",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 0,
        "maxzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(237, 237, 237)",
          "line-width": {
            "base": 1,
            "stops": [
              [3, 1],
              [5, 1.2]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["!has", "claimed_by"],
          ["==", "maritime", 1]
        ]
      },
      {
        "id": "boundary_2_z5",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(212, 212, 212)",
          "line-width": {
            "base": 1,
            "stops": [
              [5, 1.2],
              [12, 3]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["==", "disputed", 0],
          ["==", "maritime", 0]
        ]
      },
      {
        "id": "boundary_2_z5_disputed",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(194, 194, 194)",
          "line-width": {
            "base": 1,
            "stops": [
              [5, 1.2],
              [12, 3]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [4, 3]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["==", "disputed", 1],
          ["==", "maritime", 0]
        ]
      },
      {
        "id": "boundary_2_z5_disputed_maritime",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(237, 237, 237)",
          "line-width": {
            "base": 1,
            "stops": [
              [5, 1.2],
              [12, 3]
            ]
          },
          "line-opacity": 1,
          "line-dasharray": [4, 3]
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["==", "disputed", 1],
          ["==", "maritime", 1]
        ]
      },
      {
        "id": "boundary_2_z5_maritime",
        "type": "line",
        "source": "openmaptiles",
        "source-layer": "boundary",
        "minzoom": 5,
        "layout": {
          "line-cap": "round",
          "line-join": "round",
          "visibility": "visible"
        },
        "paint": {
          "line-color": "rgb(237, 237, 237)",
          "line-width": {
            "base": 1,
            "stops": [
              [5, 1.2],
              [12, 3]
            ]
          },
          "line-opacity": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "admin_level", 2],
          ["==", "disputed", 0],
          ["==", "maritime", 1]
        ]
      },
      {
        "id": "water_name_line",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 0,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-max-width": 5,
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgb(164, 164, 164)",
          "text-halo-color": "rgba(255, 255, 255, 0.7)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "water_name_line-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 0,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-max-width": 5,
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgb(164, 164, 164)",
          "text-halo-color": "rgba(255, 255, 255, 0.7)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "LineString"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "water_name_point",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 2,
        "maxzoom": 24,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-max-width": 5
        },
        "paint": {
          "text-color": "rgb(147, 147, 147)",
          "text-halo-color": "rgba(255, 255, 255, 0)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          ["!=", "class", "ocean"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "water_name_point-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 2,
        "maxzoom": 24,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-max-width": 5
        },
        "paint": {
          "text-color": "rgb(147, 147, 147)",
          "text-halo-color": "rgba(255, 255, 255, 0)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          ["!=", "class", "ocean"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "water_ocean_name_point",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 0,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-max-width": 5
        },
        "paint": {
          "text-color": "rgb(147, 147, 147)",
          "text-halo-color": "rgba(255, 255, 255, 0)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          ["==", "class", "ocean"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "water_ocean_name_point-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "water_name",
        "minzoom": 0,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": 12,
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-max-width": 5
        },
        "paint": {
          "text-color": "rgb(147, 147, 147)",
          "text-halo-color": "rgba(255, 255, 255, 0)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          ["==", "class", "ocean"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "poi_z16_subclass",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 16,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{subclass}_11",
          "text-field": "{name:latin}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 20],
          [
            "any",
            [
              "all",
              ["in", "class", "pitch"],
              [
                "in",
                "subclass",
                "soccer",
                "tennis",
                "baseball",
                "basketball",
                "swimming",
                "golf"
              ]
            ]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "poi_z16_subclass-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 16,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{subclass}_11",
          "text-field": "{name:ru}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 20],
          [
            "any",
            [
              "all",
              ["in", "class", "pitch"],
              [
                "in",
                "subclass",
                "soccer",
                "tennis",
                "baseball",
                "basketball",
                "swimming",
                "golf"
              ]
            ]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "poi_z16",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 16,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:latin}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 20],
          [
            "none",
            [
              "all",
              ["in", "class", "pitch"],
              [
                "in",
                "subclass",
                "soccer",
                "tennis",
                "baseball",
                "basketball",
                "swimming",
                "golf"
              ]
            ]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "poi_z16-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 16,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:ru}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 20],
          [
            "none",
            [
              "all",
              ["in", "class", "pitch"],
              [
                "in",
                "subclass",
                "soccer",
                "tennis",
                "baseball",
                "basketball",
                "swimming",
                "golf"
              ]
            ]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "poi_z15",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 15,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:latin}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 7],
          ["<", "rank", 20],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "poi_z15-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 15,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:ru}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [">=", "rank", 7],
          ["<", "rank", 20],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "poi_z14",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 14.2,
        "layout": {
          "icon-size": 0.9,
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:latin}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [
            "any",
            ["<", "rank", 7]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "poi_z14-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 14.2,
        "layout": {
          "icon-size": 0.9,
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:ru}",
          "visibility": "none",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          [
            "any",
            ["<", "rank", 7]
          ],
          [
            "any",
            ["!has", "level"],
            ["==", "level", 0]
          ],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "poi_transit",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 15,
        "layout": {
          "icon-size": 0.9,
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:latin}",
          "visibility": "none",
          "text-anchor": "left",
          "text-offset": [0.9, 0],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "rgba(102, 102, 102, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "bus", "railway", "airport"],
          ["==", "subclass", "station"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "poi_transit-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "poi",
        "minzoom": 15,
        "layout": {
          "icon-size": 0.9,
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 12,
          "icon-image": "{class}_11",
          "text-field": "{name:ru}",
          "visibility": "none",
          "text-anchor": "left",
          "text-offset": [0.9, 0],
          "text-padding": 2,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "rgba(102, 102, 102, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "class", "bus", "railway", "airport"],
          ["==", "subclass", "station"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "road_oneway",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 15,
        "layout": {
          "icon-size": {
            "stops": [
              [15, 0.5],
              [19, 1]
            ]
          },
          "icon-image": "oneway",
          "visibility": "none",
          "icon-rotate": 90,
          "icon-padding": 2,
          "symbol-spacing": 75,
          "symbol-placement": "line",
          "icon-rotation-alignment": "map"
        },
        "paint": {"icon-opacity": 0.5},
        "filter": [
          "all",
          ["==", "oneway", 1],
          [
            "in",
            "class",
            "motorway",
            "trunk",
            "primary",
            "secondary",
            "tertiary",
            "minor",
            "service"
          ]
        ]
      },
      {
        "id": "road_oneway_opposite",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation",
        "minzoom": 15,
        "layout": {
          "icon-size": {
            "stops": [
              [15, 0.5],
              [19, 1]
            ]
          },
          "icon-image": "oneway",
          "icon-rotate": -90,
          "icon-padding": 2,
          "symbol-spacing": 75,
          "symbol-placement": "line",
          "icon-rotation-alignment": "map",
          "visibility": "none"
        },
        "paint": {"icon-opacity": 0.5},
        "filter": [
          "all",
          ["==", "oneway", -1],
          [
            "in",
            "class",
            "motorway",
            "trunk",
            "primary",
            "secondary",
            "tertiary",
            "minor",
            "service"
          ]
        ]
      },
      {
        "id": "road_gondola_label",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 13,
        "layout": {
          "text-font": ["Roboto Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [15, 12]
            ]
          },
          "text-field": "{name:latin}",
          "text-anchor": "center",
          "text-offset": [0.8, 0.8],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgba(113, 103, 95, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "rgba(255, 255, 255, 1)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "subclass", "gondola", "cable_car"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "road_gondola_label-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 13,
        "layout": {
          "text-font": ["Roboto Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [15, 12]
            ]
          },
          "text-field": "{name:ru}",
          "text-anchor": "center",
          "text-offset": [0.8, 0.8],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgba(113, 103, 95, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "rgba(255, 255, 255, 1)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["in", "subclass", "gondola", "cable_car"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "road_ferry_label",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 12,
        "layout": {
          "text-font": ["Roboto Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [15, 12]
            ]
          },
          "text-field": "{name:latin}",
          "text-anchor": "center",
          "text-offset": [0.8, 0.8],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgba(46, 126, 168, 1)",
          "text-halo-blur": 0.5,
          "text-halo-width": 1
        },
        "filter": [
          "all",
          ["==", "subclass", "ferry"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "road_ferry_label-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 12,
        "layout": {
          "text-font": ["Roboto Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [15, 12]
            ]
          },
          "text-field": "{name:ru}",
          "text-anchor": "center",
          "text-offset": [0.8, 0.8],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "rgba(46, 126, 168, 1)",
          "text-halo-blur": 0.5,
          "text-halo-width": 1
        },
        "filter": [
          "all",
          ["==", "subclass", "ferry"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "road_label",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [14, 13]
            ]
          },
          "text-field": "{name:latin}",
          "text-anchor": "center",
          "text-offset": [0, 0.15],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "#765",
          "text-halo-blur": 0.5,
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "subclass", "ferry", "gondola", "cable_car"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "road_label-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1,
            "stops": [
              [13, 11],
              [14, 13]
            ]
          },
          "text-field": "{name:ru}",
          "text-anchor": "center",
          "text-offset": [0, 0.15],
          "symbol-placement": "line"
        },
        "paint": {
          "text-color": "#765",
          "text-halo-blur": 0.5,
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["!in", "subclass", "ferry", "gondola", "cable_car"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "highway-junction",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 15.5,
        "layout": {
          "icon-size": 1,
          "text-font": ["Noto Sans Regular"],
          "text-size": 10,
          "icon-image": "circle_8",
          "text-field": "Exit {ref}",
          "visibility": "visible",
          "text-anchor": "bottom-left",
          "text-offset": [0.55, -0.4],
          "text-justify": "center",
          "icon-text-fit": "none",
          "symbol-spacing": 200,
          "symbol-z-order": "auto",
          "symbol-placement": "point",
          "symbol-avoid-edges": true,
          "text-pitch-alignment": "auto",
          "icon-rotation-alignment": "viewport",
          "text-rotation-alignment": "viewport"
        },
        "paint": {"text-color": "rgba(79, 77, 77, 1)", "icon-opacity": 1},
        "filter": [
          "all",
          ["==", "\$type", "Point"],
          ["==", "subclass", "junction"],
          [">", "ref_length", 0]
        ]
      },
      {
        "id": "highway-shield",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 8,
        "layout": {
          "icon-size": 1,
          "text-font": ["Noto Sans Regular"],
          "text-size": 10,
          "icon-image": "road_{ref_length}",
          "text-field": "{ref}",
          "symbol-spacing": 200,
          "symbol-placement": {
            "base": 1,
            "stops": [
              [10, "point"],
              [11, "line"]
            ]
          },
          "symbol-avoid-edges": true,
          "icon-rotation-alignment": "viewport",
          "text-rotation-alignment": "viewport",
          "visibility": "none"
        },
        "paint": {"text-color": "rgba(37, 36, 36, 1)"},
        "filter": [
          "all",
          ["<=", "ref_length", 6],
          ["==", "\$type", "LineString"],
          ["!in", "network", "us-interstate", "us-highway", "us-state"]
        ]
      },
      {
        "id": "highway-shield-us-interstate",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 7,
        "layout": {
          "icon-size": 1,
          "text-font": ["Noto Sans Regular"],
          "text-size": 9,
          "icon-image": "{network}_{ref_length}",
          "text-field": "{ref}",
          "symbol-spacing": 200,
          "symbol-placement": {
            "base": 1,
            "stops": [
              [7, "point"],
              [7, "line"],
              [8, "line"]
            ]
          },
          "symbol-avoid-edges": true,
          "icon-rotation-alignment": "viewport",
          "text-rotation-alignment": "viewport",
          "visibility": "none"
        },
        "paint": {"text-color": "rgba(255, 255, 255, 1)"},
        "filter": [
          "all",
          ["<=", "ref_length", 6],
          ["==", "\$type", "LineString"],
          ["in", "network", "us-interstate"]
        ]
      },
      {
        "id": "highway-shield-us-other",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "transportation_name",
        "minzoom": 9,
        "layout": {
          "icon-size": 1,
          "text-font": ["Noto Sans Regular"],
          "text-size": 9,
          "icon-image": "{network}_{ref_length}",
          "text-field": "{ref}",
          "symbol-spacing": 200,
          "symbol-placement": {
            "base": 1,
            "stops": [
              [10, "point"],
              [11, "line"]
            ]
          },
          "symbol-avoid-edges": true,
          "icon-rotation-alignment": "viewport",
          "text-rotation-alignment": "viewport",
          "visibility": "none"
        },
        "paint": {"text-color": "rgba(37, 36, 36, 1)"},
        "filter": [
          "all",
          ["<=", "ref_length", 6],
          ["==", "\$type", "LineString"],
          ["in", "network", "us-highway", "us-state"]
        ]
      },
      {
        "id": "airport_label",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "aerodrome_label",
        "minzoom": 8.5,
        "layout": {
          "icon-size": 1,
          "text-font": ["Noto Sans Regular"],
          "text-size": {
            "stops": [
              [8, 10],
              [14, 13]
            ]
          },
          "icon-image": "airport_11",
          "text-field": {
            "stops": [
              [8, " "],
              [9, "{name:latin}\n{name:nonlatin}"]
            ]
          },
          "visibility": "visible",
          "text-anchor": "top",
          "text-offset": [0, 0.6],
          "text-padding": 2,
          "text-optional": true,
          "text-max-width": 9
        },
        "paint": {
          "text-color": "#666",
          "text-halo-blur": 0.5,
          "text-halo-color": "#ffffff",
          "text-halo-width": 1
        },
        "filter": [
          "all",
          ["has", "iata"]
        ]
      },
      {
        "id": "airport_gate",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "aeroway",
        "minzoom": 16.5,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "stops": [
              [17, 9],
              [19, 15]
            ]
          },
          "text-field": "{ref}"
        },
        "paint": {
          "text-color": "rgba(135, 135, 135, 1)",
          "text-halo-color": "rgba(255, 255, 255, 1)",
          "text-halo-width": 1.5
        },
        "filter": [
          "all",
          ["==", "class", "gate"]
        ]
      },
      {
        "id": "place_park",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "park",
        "minzoom": 12,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [12, 10],
              [15, 14]
            ]
          },
          "text-field": "{name:latin}",
          "visibility": "visible",
          "symbol-spacing": 1250,
          "text-max-width": 9,
          "text-transform": "none",
          "symbol-avoid-edges": false,
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(94, 141, 58, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 1],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_park-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "park",
        "minzoom": 12,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [12, 10],
              [15, 14]
            ]
          },
          "text-field": "{name:ru}",
          "visibility": "visible",
          "symbol-spacing": 1250,
          "text-max-width": 9,
          "text-transform": "none",
          "symbol-avoid-edges": false,
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(94, 141, 58, 1)",
          "text-halo-blur": 0.5,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 1],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_other",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 8,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [12, 10],
              [15, 14]
            ]
          },
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-max-width": 9,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(66, 62, 62, 1)",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          [
            "in",
            "class",
            "hamlet",
            "island",
            "islet",
            "neighbourhood",
            "suburb"
          ],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_other-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 8,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [12, 10],
              [15, 14]
            ]
          },
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-max-width": 9,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(66, 62, 62, 1)",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          [
            "in",
            "class",
            "hamlet",
            "island",
            "islet",
            "neighbourhood",
            "suburb"
          ],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_village",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 8,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [10, 12],
              [15, 22]
            ]
          },
          "text-field": "{name:latin}",
          "text-max-width": 8
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "village"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_village-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 8,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [10, 12],
              [15, 22]
            ]
          },
          "text-field": "{name:ru}",
          "text-max-width": 8
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "village"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_town",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 6,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [7, 12],
              [11, 16]
            ]
          },
          "icon-image": {
            "base": 1,
            "stops": [
              [0, "circle-stroked_16"],
              [10, ""]
            ]
          },
          "text-field": "{name:latin}",
          "text-anchor": "bottom",
          "text-offset": [0, 0],
          "text-max-width": 8
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "town"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_town-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 6,
        "layout": {
          "text-font": ["Roboto Regular", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [7, 12],
              [11, 16]
            ]
          },
          "icon-image": {
            "base": 1,
            "stops": [
              [0, "circle-stroked_16"],
              [10, ""]
            ]
          },
          "text-field": "{name:ru}",
          "text-anchor": "bottom",
          "text-offset": [0, 0],
          "text-max-width": 8
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "town"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_city",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 5,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [7, 14],
              [11, 24]
            ]
          },
          "icon-image": {
            "base": 1,
            "stops": [
              [0, "circle-stroked_16"],
              [10, ""]
            ]
          },
          "text-field": "{name:latin}",
          "text-anchor": "bottom",
          "text-offset": [0, 0],
          "icon-optional": false,
          "text-max-width": 8,
          "icon-allow-overlap": true
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "city"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_city-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 5,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "base": 1.2,
            "stops": [
              [7, 14],
              [11, 24]
            ]
          },
          "icon-image": {
            "base": 1,
            "stops": [
              [0, "circle-stroked_16"],
              [10, ""]
            ]
          },
          "text-field": "{name:ru}",
          "text-anchor": "bottom",
          "text-offset": [0, 0],
          "icon-optional": false,
          "text-max-width": 8,
          "icon-allow-overlap": true
        },
        "paint": {
          "text-color": "#333",
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 1.2
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "city"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_region",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 5,
        "maxzoom": 7,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "stops": [
              [3, 9],
              [5, 10],
              [6, 11]
            ]
          },
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-padding": 2,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(118, 116, 108, 1)",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "state"],
          ["in", "rank", 3, 4, 5],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_region-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 5,
        "maxzoom": 7,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "stops": [
              [3, 9],
              [5, 10],
              [6, 11]
            ]
          },
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-padding": 2,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(118, 116, 108, 1)",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "state"],
          ["in", "rank", 3, 4, 5],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "place_state",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 3,
        "maxzoom": 6,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "stops": [
              [3, 9],
              [5, 11],
              [6, 12]
            ]
          },
          "text-field": "{name:latin}",
          "visibility": "visible",
          "text-padding": 2,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(118, 116, 108, 1)",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "state"],
          ["in", "rank", 1, 2],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "place_state-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "minzoom": 3,
        "maxzoom": 6,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": {
            "stops": [
              [3, 9],
              [5, 11],
              [6, 12]
            ]
          },
          "text-field": "{name:ru}",
          "visibility": "visible",
          "text-padding": 2,
          "text-transform": "uppercase",
          "text-letter-spacing": 0.1
        },
        "paint": {
          "text-color": "rgba(118, 116, 108, 1)",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "state"],
          ["in", "rank", 1, 2],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "country_other",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [3, 9],
              [7, 15]
            ]
          },
          "text-field": "{name:latin}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "country"],
          ["!has", "iso_a2"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "country_other-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [3, 9],
              [7, 15]
            ]
          },
          "text-field": "{name:ru}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "country"],
          ["!has", "iso_a2"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "country_3",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [3, 11],
              [7, 17]
            ]
          },
          "text-field": "{name:latin}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          [">=", "rank", 3],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "country_3-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [3, 11],
              [7, 17]
            ]
          },
          "text-field": "{name:ru}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          [">=", "rank", 3],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "country_2",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [2, 11],
              [5, 17]
            ]
          },
          "text-field": "{name:latin}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 2],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "country_2-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [2, 11],
              [5, 17]
            ]
          },
          "text-field": "{name:ru}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 2],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "country_1",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [1, 11],
              [4, 17],
              [6, 19]
            ]
          },
          "text-field": "{name:latin}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 1],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "country_1-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": {
            "stops": [
              [1, 11],
              [4, 17],
              [6, 19]
            ]
          },
          "text-field": "{name:ru}",
          "text-max-width": 6.25,
          "text-transform": "none"
        },
        "paint": {
          "text-color": "#334",
          "text-halo-blur": 1,
          "text-halo-color": "rgba(255,255,255,0.8)",
          "text-halo-width": 0.8
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "rank", 1],
          ["==", "class", "country"],
          ["has", "iso_a2"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "continent",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "maxzoom": 1,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 13,
          "text-field": "{name:latin}",
          "text-justify": "center",
          "text-transform": "uppercase"
        },
        "paint": {
          "text-color": "#633",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "continent"],
          ["!has", "name:ru"]
        ]
      },
      {
        "id": "continent-ru",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "place",
        "maxzoom": 1,
        "layout": {
          "text-font": ["Roboto Condensed Italic", "Noto Sans Italic"],
          "text-size": 13,
          "text-field": "{name:ru}",
          "text-justify": "center",
          "text-transform": "uppercase"
        },
        "paint": {
          "text-color": "#633",
          "text-halo-color": "rgba(255,255,255,0.7)",
          "text-halo-width": 1
        },
        "metadata": {},
        "filter": [
          "all",
          ["==", "class", "continent"],
          ["has", "name:ru"]
        ]
      },
      {
        "id": "housenumber",
        "type": "symbol",
        "source": "openmaptiles",
        "source-layer": "housenumber",
        "minzoom": 17.5,
        "layout": {
          "text-font": ["Roboto Medium", "Noto Sans Regular"],
          "text-size": 10,
          "text-field": "{housenumber}"
        },
        "paint": {"text-color": "rgba(119, 102, 85, 0.69)"}
      }
    ],
    "metadata": {
      "maptiler:copyright":
          "This style was generated on MapTiler Cloud. Usage outside of MapTiler Cloud or MapTiler Server requires valid MapTiler Data package: https://www.maptiler.com/data/ -- please contact us."
    },
    "glyphs":
        "https://api.maptiler.com/fonts/{fontstack}/{range}.pbf?key=v1rrCATS7vfrfH1Ks78f",
    "sprite":
        "https://api.maptiler.com/maps/423e3dfa-d3ca-45b1-9639-72af7b1074fa/sprite",
    "bearing": 0,
    "pitch": 0,
    "center": [55.90753066286197, 53.62683972505798],
    "zoom": 14.324638440799621
  };
}
