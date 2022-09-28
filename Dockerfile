FROM julia:1.7.3

RUN apt-get update && \
    apt-get install -y git &&\
    apt-get install -y wget && \
    rm -rf /var/lib/apt/list/*

RUN julia -e 'import Pkg; Pkg.update()' && \
        julia -e 'import Pkg; Pkg.add(name="Plots", version="1.31.4"); using Plots' && \
        julia -e 'import Pkg; Pkg.add(name="Distributions",version="0.25.66"); using Distributions' && \
        julia -e 'import Pkg; Pkg.add(name="IJulia", version="1.23.3"); using IJulia' &&\
        julia -e 'import Pkg; Pkg.add("LinearAlgebra"); using LinearAlgebra' &&\
        julia -e 'import Pkg; Pkg.add("FileIO"); using FileIO' &&\
        julia -e 'import Pkg; Pkg.add(name="Images", vesion="0.25.2"); using Images' &&\
        julia -e 'import Pkg; Pkg.add(name="CSV", version = "0.10.4"); using CSV'&&\
        julia -e 'import Pkg; Pkg.add("Random"); using Random'

CMD ["julia"]

# docker build -t julia-dataeng .
# docker run -it -v /Users/v1fmenol/Documents/GitHub/data_driven_engineering:/home/julia/project julia-dataeng
# docker tag julia-dataeng filipm/julia-dataeng
# docker push filipm/julia-dataeng