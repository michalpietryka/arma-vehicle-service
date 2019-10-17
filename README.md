# arma-vehicle-service

Vehicle service script with gui. Supports pylon loadouts.

### Instalation

1. copy script files into mission directory, put it into "HVR" subdirectory
2. add in **description.ext**:
```
#include "HVR/HvrFunctions.hpp"
```
3. add code in init parameter for objects that you want to be service area:
```
[this] call HVR_VS_fnc_setServicePoint;
```

### Configuration

Configuration file is located in: **config/hvr_vehicle_service.hpp**

```
serviceAreaActionRadius = 5;
serviceAreaRadius = 50;
serviceAreaHeight = 30;
```
