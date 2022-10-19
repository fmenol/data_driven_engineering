FROM julia:1.7.3

RUN apt-get update && \
    apt-get install -y git &&\
    apt-get install -y wget && \
    rm -rf /var/lib/apt/list/*

RUN julia -e 'import Pkg; Pkg.update()'
RUN julia -e 'import Pkg; Pkg.add(name="Plots", version="1.31.4"); using Plots'
RUN julia -e 'import Pkg; Pkg.add(name="Distributions",version="0.25.66"); using Distributions'
RUN julia -e 'import Pkg; Pkg.add(name="IJulia", version="1.23.3"); using IJulia'
RUN julia -e 'import Pkg; Pkg.add("LinearAlgebra"); using LinearAlgebra'
RUN julia -e 'import Pkg; Pkg.add("FileIO"); using FileIO'
RUN julia -e 'import Pkg; Pkg.add(name="Images", version="0.25.2"); using Images'
RUN julia -e 'import Pkg; Pkg.add(name="CSV", version = "0.10.4"); using CSV'
RUN julia -e 'import Pkg; Pkg.add("DelimitedFiles"); using CSV'
RUN julia -e 'import Pkg; Pkg.add("MAT"); using MAT'
RUN julia -e 'import Pkg; Pkg.add(name="ImageTransformations", version="0.9.5"); using ImageTransformations'
RUN julia -e 'import Pkg; Pkg.add(name="CoordinateTransformations", version="0.6.2"); using CoordinateTransformations'
RUN julia -e 'import Pkg; Pkg.add(name="Rotations", version="1.3.2"); using Rotations'
RUN julia -e 'import Pkg; Pkg.add(name="TensorDecompositions", version="1.2.4"); using TensorDecompositions'
RUN julia -e 'import Pkg; Pkg.add("VectorizedRoutines"); using VectorizedRoutines'
RUN julia -e 'import Pkg; Pkg.add("Random"); using Random'

CMD ["julia"]

# docker build -t julia-dataeng .
# docker run -it -v /Users/v1fmenol/Documents/GitHub/data_driven_engineering:/home/julia/project julia-dataeng
# docker tag julia-dataeng filipm/julia-dataeng
# docker push filipm/julia-dataeng