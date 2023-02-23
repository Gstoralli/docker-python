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
        "apikey": "qPjEfH0qZdP9Wzhc6hud5fgfwPOBMD38wP98YbufLUaC",
        "host": "da16271e-52f3-4173-9108-79d10cecd509-bluemix.cloudantnosqldb.appdomain.cloud",
        "iam_apikey_description": "Auto-generated for key crn:v1:bluemix:public:cloudantnosqldb:us-east:a/3c3e790abd7684ada610199732b97e64:8d39be03-f344-4fdb-b9ad-ef2eee20a2aa:resource-key:4a67e259-29f9-4788-aa09-cb555b2a3be1",
        "iam_apikey_name": "credenciais_de_servico_1",
        "iam_role_crn": "crn:v1:bluemix:public:iam::::serviceRole:Manager",
        "iam_serviceid_crn": "crn:v1:bluemix:public:iam-identity::a/3c3e790abd7684ada610199732b97e64::serviceid:ServiceId-633acf7b-624b-41df-8434-e38a65f4f53d",
        "url": "https://da16271e-52f3-4173-9108-79d10cecd509-bluemix.cloudantnosqldb.appdomain.cloud",
        "username": "da16271e-52f3-4173-9108-79d10cecd509-bluemix"
    }

    export IAM_API_KEY="qPjEfH0qZdP9Wzhc6hud5fgfwPOBMD38wP98YbufLUaC"
    export COUCH_URL="https://da16271e-52f3-4173-9108-79d10cecd509-bluemix.cloudantnosqldb.appdomain.cloud"

    get-dealership GET
        https://us-south.functions.appdomain.cloud/api/v1/web/gustavo%40novahub.com.br_dev/default/get-dealership
            IAM_API_KEY
            COUCH_URL
            state? (optional)

# ibm watson
    url     = "https://api.us-south.natural-language-understanding.watson.cloud.ibm.com/instances/e8071ead-5251-41a6-943c-97e72fa98a50"
    api_key = "3p2jYBbZFMYZ1n2jDTxpqWkmA4Bo73-LM8mWyLOXPOsw"

# to upload database.json to cloudant
    $ npm install -g couchimport

# if npm not found (vou enfiar isso no dockerfile)
    $ apt update
    $ apt install nodejs npm

    (to verify the installation)
        $ nodejs --version

# para acessar admin
    localhost:5000/admin
    user = gabriel
    email = gabriel@votionn.com.br
    senha = ma90797

    # Course
        views get_dealer_details falta mostrar as reviews na tela, já ta pegado, só mostrar
