# using_rol

## build instructions on scorec machines

### load some tasty modules
<pre>
module load git
module load cmake
module load gcc/4.9.2
module load mpich3/3.1.2-thread-multiple
</pre>

### build trilinos
cd to a directory where you want to make trilinos and clone
the public trilinos repository into a directory called src
<pre>
mkdir trilinos
cd trilinos
git clone https://software.sandia.gov/trilinos/repositories/publicTrilinos src
</pre>

make a build directory and config trilnos using the config-trilinos.sh
<pre>
mkdir build
cd build
** copy config-trilinosh.sh to this directory **
./config-trilinos.sh
</pre>

make trilinos
<pre>
make -j 2
make install -j 2
</pre>

### make the rosenbrock example
cd somewhere where you want an example directory built and make the
rosenbrock example using the CMakeLists.txt and rosenbrock.cpp files
in this repository
<pre>
mkdir rosenbrock
cd rosenbrock
** copy CMakeLists.txt to this directory **
** copy rosenbrock.cpp to this directory **
cmake -DTRILINOS_PATH=/path/to/trilinos/install .
</pre>

### run it!
<pre>
./rosenbrock
</pre>
