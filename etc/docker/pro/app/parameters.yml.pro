# /!\ /!\ DON'T DO THIS, JIMMY /!\ /!\
#
# The production parameters.yml file might be tucked away somewhere safe
# in the deployment server or generated on the fly somehow, but
# definitely NOT STORED INSIDE THE REPOSITORY.
parameters:
    database_host: somewhere
    database_port: 5432
    database_name: docker-symfony.pro
    database_user: some_database_user
    database_password: a_sensible_password
    mailer_transport: smtp
    mailer_host: 127.0.0.1
    mailer_user: null
    mailer_password: null
    redis_host: somewhere_else
    secret: 528756867624db3019abe58affd66e72b6240652
