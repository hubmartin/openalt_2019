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
          "id": "9639aaa5-64ee-497e-b58f-af55ef2741f3",
          "type": "basic.output",
          "data": {
            "name": "out",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 688,
            "y": 280
          }
        },
        {
          "id": "e1e5eadf-3214-480a-a34b-675ce4041210",
          "type": "basic.input",
          "data": {
            "name": "in",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 88,
            "y": 288
          }
        },
        {
          "id": "39c00582-c3b1-4abc-aebd-a43a6345a9a3",
          "type": "basic.code",
          "data": {
            "code": "// Divider\n\nreg out = 1'b0;\n\nalways @(posedge in)\nbegin\n  out <= ~out;\nend\n\n\n\n",
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
            "x": 256,
            "y": 200
          },
          "size": {
            "width": 360,
            "height": 232
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "e1e5eadf-3214-480a-a34b-675ce4041210",
            "port": "out"
          },
          "target": {
            "block": "39c00582-c3b1-4abc-aebd-a43a6345a9a3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "39c00582-c3b1-4abc-aebd-a43a6345a9a3",
            "port": "out"
          },
          "target": {
            "block": "9639aaa5-64ee-497e-b58f-af55ef2741f3",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}