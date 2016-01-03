# ATDD-By-Example

## Getting Started

Follow the [Workshop Setup](EnvironmentSetup.pdf).

Download and install [git scm](https://git-scm.com/).

***From a command prompt.***

Verify git is installed.

````bash
$ git --version
````

Clone the repository. (Note: Navigate to a directory to store this source code)

````bash
$ git clone https://github.com/dmorgan3405/ATDD-By-Example.git
````

````bash
$ cd ATDD-By-Example
````

Install needed gems.

````bash
$ bundle install
````

Run features.
````bash
$ rake features
````
## Checkpoints

If you fall behind, or don't complete an exercise, do fret checkpoints (git tags) exists to allow for easy navigation from exercise to exercise.

Tags exists for both exercise starting points, solutions to them, and examples of other concepts.

The following exercises are tagged at this time:

  - start_adopting_a_puppy
  - start_using_cucumber_tables
  - start_adopting_two_puppies
  - start_using_scenario_outlines
  - start_validating_shopping_cart

The following solutions/examples are tagged at this time:

  - example_of_driving_a_browser
  - example_of_adopting_a_puppy
  - example_of_adding_verification
  - example_of_using_cucumber_tables
  - example_of_using_default_data
  - example_of_using_populate_page_with
  - example_of_data_magic
  - example_of_adopting_two_puppies
  - example_of_using_scenario_outlines
  - example_of_validating_shopping_cart

### Using checkpoints

To use a checkpoint simply do a git checkout

````bash
$ git checkout <tag_name>
````
