{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "seq_death",
  "autoRecord": true,
  "backdropHeight": 360,
  "backdropImageOpacity": 0.5,
  "backdropImagePath": "",
  "backdropWidth": 640,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "events": {
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "eventStubScript": {
    "name": "seq_death_animation_mid",
    "path": "scripts/seq_death_animation_mid/seq_death_animation_mid.yy",
  },
  "eventToFunction": {},
  "length": 60.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [
      {"resourceType":"Keyframe<MomentsEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MomentsEventKeyframe","resourceVersion":"1.0","Events":[
              "seq_death_animation_mid",
            ],},},"Disabled":false,"id":"eb726883-ff9e-4060-8943-7ea1fb1b756d","IsCreationKey":false,"Key":30.0,"Length":1.0,"Stretch":false,},
    ],
  },
  "parent": {
    "name": "Sequences",
    "path": "folders/Sequences.yy",
  },
  "playback": 0,
  "playbackSpeed": 60.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"sPixel","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"sPixel","path":"sprites/sPixel/sPixel.yy",},},},"Disabled":false,"id":"f9fe90a4-60cc-4da6-82d1-43bffedf02ef","IsCreationKey":false,"Key":0.0,"Length":60.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294068456,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4278190080,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"75a33c44-5e54-44db-9a45-4f85ba53e531","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068456,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"39a0def8-188b-42da-8456-41d2fb5592fe","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068456,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-1148.294,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-709.2655,},},"Disabled":false,"id":"9da0c5bd-1383-4536-a48d-76bb5430f9a5","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-782.29395,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-180.0,},},"Disabled":false,"id":"2755e3fe-0198-4554-9e7b-35fa0d129d08","IsCreationKey":false,"Key":30.0,"Length":1.0,"Stretch":false,},
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-79.284485,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":819.9999,},},"Disabled":false,"id":"08e00402-7770-4e53-89a2-b16f699e3c31","IsCreationKey":false,"Key":59.9999,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068456,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":20.116928,},},"Disabled":false,"id":"41919eef-786e-4d78-b853-8faca337bffc","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068456,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1213.5,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":775.0,},},"Disabled":false,"id":"fc72ffd4-a1a3-405f-96d6-cc7e3bde8c2d","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068456,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": null,
  "volume": 1.0,
  "xorigin": 0,
  "yorigin": 0,
}