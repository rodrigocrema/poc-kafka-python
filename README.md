# Python with Kafka

Small example of how to use Kafka with Python.

## Requirements
- Python 3.10
- Docker
- Docker Compose
- Install python dependencies with `pip install -r requirements.txt`

## Run
- Start Kafka with `docker-compose up -d`
- Run the consumer with `python consumer.py`
- Run the API with `uvicorn api:app --reload`

## Curl Exemplo para envio de mensagem
curl --location --request POST 'http://localhost:8000/data' \
--header 'Content-Type: application/json' \
--data-raw '{
	"id": 9,
	"store": "Brussels",
	"date": "2020-01-01",
	"products": [{
		"id": "123456789",
		"name": "Banana",
		"price": 1.5,
		"category": "Fruit"
	}, {
		"id": "123456789",
		"name": "Bread",
		"price": 1.5,
		"category": "Bakery"
	}, {
		"id": "123456789",
		"name": "Water",
		"price": 1.5,
		"category": "Drink"
	}]
}'


- Send a message with the API, you can see the doc at: `http://localhost:8000/docs`
- Test the system with `python test.py`


## Cli commands:
https://hevodata.com/learn/kafka-cli-commands/#:~:text=The%20Kafka%20CLI%20is%20an,tasks%20within%20your%20Kafka%20environment.

## Configs
 docker exec -it kafka-python-demo-main_kafka_1 bash
root@f0559ae5a588:/# cd opt/kafka/config/

## Kafka UI
http://localhost:9080/