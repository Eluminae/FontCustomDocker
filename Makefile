svg_sources=svg

default: compile

watch:
	docker-compose run --rm app fontcustom watch "/app/$(svg_sources)"

compile:
	docker-compose run --rm app fontcustom compile "/app/$(svg_sources)"

command:
	docker-compose run --rm app fontcustom "$(cmd)" "/app/$(svg_sources)"

