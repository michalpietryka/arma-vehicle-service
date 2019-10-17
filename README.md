# arma-vehicle-service

Vehicle service script with gui. Supports pylon loadouts.

### Instalation

1. copy script files (except `stringtable.csv`) into mission directory, put it into "HVR" subdirectory.
2. add in **description.ext**:
```
#include "HVR\HvrFunctions.hpp"
```
3. copy `stringtable.csv` file into mission root directory
4. add code in init parameter for objects that you want to be service area:
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

### Translations

Script uses Stringtable.csv file to provide translations. If you already use it in your mission, simply combine script file with your translations file. Two languages are added: English, Polish.