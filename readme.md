# build the image
    $ docker build -t ibm-fs:1 .

# run the image
    $ docker run --name ibm-fs --rm -it -p 5000:5000 -v "$(pwd)"/codigo:/codigo ibm-fs:2 python3 manage.py runserver '0.0.0.0:5000'

# preparing the environment (put in the dockerfile after understanding)
    $ docker exec -it ibm-fs bash
    ** inside the bash **
    enfiei isso na imagem
        $ cd server
        $ python3 -m pip install -U -r requirements.txt
        $ python3 manage.py makemigrations
        $ python3 manage.py migrate
    
    
    $ python3 manage.py runserver '0.0.0.0:5000'

# ibm cloudant credenciais_de_servico_1
    {
        "apikey": "",
        "host": ".cloudantnosqldb.appdomain.cloud",
        "iam_apikey_description": "",
        "iam_apikey_name": "credenciais_de_servico_1",
        "iam_role_crn": "crn:v1:bluemix:public:iam::::serviceRole:Manager",
        "iam_serviceid_crn": "",
        "url": "https://.cloudantnosqldb.appdomain.cloud",
        "username": ""
    }

    export IAM_API_KEY=""
    export COUCH_URL=".cloudantnosqldb.appdomain.cloud"

    get-dealership GET
        https://us-south.functions.appdomain.cloud/api/v1/web//default/get-dealership
            IAM_API_KEY
            COUCH_URL
            state? (optional)

# ibm watson
    url     = "https://api.us-south.natural-language-understanding.watson.cloud.ibm.com/instances/"
    api_key = ""

# to upload database.json to cloudant
    $ npm install -g couchimport

# if npm not found (vou enfiar isso no dockerfile)
    $ apt update
    $ apt install nodejs npm

    (to verify the installation)
        $ nodejs --version

# para acessar admin


    # Course
        views get_dealer_details falta mostrar as reviews na tela, já ta pegado, só mostrar
