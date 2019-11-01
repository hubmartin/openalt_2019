{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-BX",
    "graph": {
      "blocks": [
        {
          "id": "81720e44-b768-482e-b781-a42ae2656493",
          "type": "basic.input",
          "data": {
            "name": "PIN_10",
            "pins": [
              {
                "index": "0",
                "name": "PIN_5",
                "value": "C1"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -48,
            "y": 232
          }
        },
        {
          "id": "ad339527-0c43-4093-871b-40a1c8b46ef6",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "pins": [
              {
                "index": "0",
                "name": "LED",
                "value": "B3"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 512,
            "y": 232
          }
        },
        {
          "id": "b0f7dc56-519f-4d0f-814f-7c4f75b18f5c",
          "type": "basic.code",
          "data": {
            "code": "// Divider\n\nreg cnt = 1'b0;\n\nalways @(posedge in)\nbegin\n  cnt <= ~cnt;\nend\n\nassign out = cnt;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in"
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 144,
            "y": 168
          },
          "size": {
            "width": 280,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "81720e44-b768-482e-b781-a42ae2656493",
            "port": "out"
          },
          "target": {
            "block": "b0f7dc56-519f-4d0f-814f-7c4f75b18f5c",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "b0f7dc56-519f-4d0f-814f-7c4f75b18f5c",
            "port": "out"
          },
          "target": {
            "block": "ad339527-0c43-4093-871b-40a1c8b46ef6",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}