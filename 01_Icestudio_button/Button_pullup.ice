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
                "name": "PIN_10",
                "value": "G2"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 64,
            "y": 192
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
            "x": 640,
            "y": 192
          }
        },
        {
          "id": "acea3c58-043e-4744-ab53-f335c58d6ba3",
          "type": "basic.code",
          "data": {
            "code": "wire button;\n\nSB_IO #(\n  .PIN_TYPE(6'b 0000_01),\n  .PULLUP(1'b 1)\n) button_input(\n  .PACKAGE_PIN(PIN_10),\n  .D_IN_0(button)\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "PIN_10"
                }
              ],
              "out": [
                {
                  "name": "button"
                }
              ]
            }
          },
          "position": {
            "x": 248,
            "y": 120
          },
          "size": {
            "width": 256,
            "height": 200
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
            "block": "acea3c58-043e-4744-ab53-f335c58d6ba3",
            "port": "PIN_10"
          }
        },
        {
          "source": {
            "block": "acea3c58-043e-4744-ab53-f335c58d6ba3",
            "port": "button"
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