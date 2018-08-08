. ./common.sh.security

# Index (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/Index/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: Index (master branch) failed"
fi

# Index (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/Index/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: Index (dev branch) failed"
fi

# SoilMoistureSensorCalibratedSerial (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedSerial/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedSerial (master branch) failed"
fi

# SoilMoistureSensorCalibratedSerial (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedSerial/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedSerial (dev branch) failed"
fi

# SoilMoistureSensorCalibratedSerialESP (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedSerialESP/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedSerialESP (master branch) failed"
fi

# SoilMoistureSensorCalibratedSerialESP (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedSerialESP/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedSerialESP (dev branch) failed"
fi

# SoilMoistureSensorCalibratedPump (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedPump/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedPump (master branch) failed"
fi

# SoilMoistureSensorCalibratedPump (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedPump/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedPump (dev branch) failed"
fi

# SoilMoistureSensorCalibratedPumpESP (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedPumpESP/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedPumpESP (master branch) failed"
fi

# SoilMoistureSensorCalibratedPumpESP (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/SoilMoistureSensorCalibratedPumpESP/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: SoilMoistureSensorCalibratedPumpESP (dev branch) failed"
fi

# TestProject (master)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/TestProject/job/master/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: TestProject (master branch) failed"
fi

# TestProject (dev)
job_status=`curl -s http://$GARDEN_HARDWARE_TESTS_HOST:8080/job/GreenSense/job/TestProject/job/dev/lastBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Hardware Test: TestProject (dev branch) failed"
fi
