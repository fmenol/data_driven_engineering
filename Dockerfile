FROM julia:latest

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/list/*

RUN julia -e 'import Pkg; Pkg.update()' && \
        julia -e 'import Pkg; Pkg.add("Plots"); using Plots' && \
        julia -e 'import Pkg; Pkg.add("Distributions"); using Distributions' && \
        julia -e 'import Pkg; Pkg.add("IJulia"); using IJulia'

CMD ["julia"]

# docker build -t julia-98dkf2
# docker run -it julia-98dkf2
# docker tag julia-98dkf2 filipm/julia-98dkf2
# docker push filipm/julia-98dkf2