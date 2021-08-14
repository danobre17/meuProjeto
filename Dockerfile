FROM rstudio/plumber

COPY endpoints.R /

COPY run.R /


EXPOSE 8080

CMD ["Rscript", "run.R"]
