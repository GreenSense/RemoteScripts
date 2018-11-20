. ./common.sh.security

# Index (master)
job_status=`curl -s http://$GARDEN_SOFTWARE_TESTS_HOST:880/job/GreenSense/job/Index/job/master/lastCompletedBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Software Test: Index (master branch) failed"
fi

# Index (dev)
job_status=`curl -s http://$GARDEN_SOFTWARE_TESTS_HOST:880/job/GreenSense/job/Index/job/dev/lastCompletedBuild/api/json | grep "\"result\":\"SUCCESS\""`

if [ "$job_status" = "" ]
then
    echo "Software Test: Index (dev branch) failed"
fi

