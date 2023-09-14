# Ants

This example simulation shows the use of an Entity Component System framework and Behavior Trees.

🚧 !!! In construction !!! 🚧

## Installation
    $ cd your_project_path
    $ get clone https://github.com/brupla6126/ruby_examples_ants.git

Install Ruby2D native libraries on Ubuntu

    $ sudo apt-get update && sudo apt-get install -y libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev

And then execute:

    $ bin/setup

## Usage

    $ exe/ants

## Resources
- Entity Component System
  - https://en.wikipedia.org/wiki/Entity_component_system
  - https://www.simplilearn.com/entity-component-system-introductory-guide-article
  - https://github.com/SanderMertens/ecs-faq
  - https://www.youtube.com/watch?v=2rW7ALyHaas
  - https://github.com/guitsaru/draco


- Behavior Trees
  - https://en.wikipedia.org/wiki/Behavior_tree_(artificial_intelligence,_robotics_and_control)
  - https://www.gamedeveloper.com/programming/behavior-trees-for-ai-how-they-work
  - https://robohub.org/introduction-to-behavior-trees/
  - https://www.youtube.com/watch?v=DCZJUvTQV5Q
  - https://github.com/ChrisVilches/Ruby-Behavior-Tree

## Design

 - Entities
    - Ant
    - Colony
    - Food
    - Pheromone

 - Components
    - AI
    - Motion
    - Position
    - Renderable

 - Systems
    - AI
    - Bounding
    - Motion
    - Rendering

 - Behavior Nodes
    - Ant::Wander
    - Ant::LookForFood
    - Ant::FoodNear
    - Ant::WalkToFood
    - Ant::PickupFood
    - Ant::DropPheromone
    - Ant::PheromoneNear
    - Ant::WalkToPheromone
    - Ant::WalkColony
    - Ant::DropFood


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brupla6126/ruby_examples_ants. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/brupla6126/ruby_examples_ants/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ants project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/brupla6126/ruby_examples_ants/blob/main/CODE_OF_CONDUCT.md).
