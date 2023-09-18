# Ants

This example simulation shows the use of an Entity Component System framework and Behavior Trees.

🚧 !!! In construction !!! 🚧


## Status

| Branch | Status |
|--------|--------|
| [main](https://github.com/brupla6126/ants/tree/main) | [![Run tests suite](https://github.com/brupla6126/ants/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/brupla6126/ants/actions/workflows/tests.yml)|
| [development](https://github.com/brupla6126/ants/tree/development) | [![Run tests suite](https://github.com/brupla6126/ants/actions/workflows/tests.yml/badge.svg?branch=development)](https://github.com/brupla6126/ants/actions/workflows/tests.yml) |


## Installation
```shell
cd your_project_path
git clone https://github.com/brupla6126/ruby_examples_ants.git
cd ruby_examples_ants
```

Install Ruby2D native libraries on Ubuntu

```shell
sudo apt-get update && sudo apt-get install -y libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev
```

And then execute:

```shell
bin/setup
```

## Usage

```shell
exe/ants
```

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

## Ant types
 - Foragers
 - Larvaes
 - Queen
 - Soldiers
 - Workers

## Goals
 - ✅ Ant wanders around
 - Forager will look for food
 - Forager will bring back food to colony
 - Forager will lay pheromone trail from food source to colony
 - Queen will initiate colony splitting
 - Queen will lay eggs
 - Soldier will carry heavy loads of food
 - Soldier will defend colony from intruders
 - Worker will care for queen and larvaes
 - Worker will feed fungus

## Concepts

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

 - Behaviors
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

 - Renderers
   - Ant
   - Colony

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brupla6126/ruby_examples_ants. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/brupla6126/ruby_examples_ants/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ants project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/brupla6126/ruby_examples_ants/blob/main/CODE_OF_CONDUCT.md).
