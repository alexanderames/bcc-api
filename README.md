# How to run API

## Clone Repo then..

rails db:create                                                                                                        
rails db:migrate                                                                                                         
rails db:seed

## Test
run rspec
`$ rspec`

## Boot up

bundle install
rails server

## Query DB

`http://localhost:3000/graphiql`

to query all vehicles, makes and models
```query {
  makes {
    name
    models {
      name
      options {
        color
        doorCount
        drivetrain
        fuelType
        style
        transmission
      }
    }
    vehicles {
      plateState
      year
      vin
    }
  }
}
```

# Note

If you are looking for more indepth, parsed out commits, the original API was developed under the repo [Vehicle API](https://github.com/alexanderames/Vehicle-API/) and then improved upon in this repository.
