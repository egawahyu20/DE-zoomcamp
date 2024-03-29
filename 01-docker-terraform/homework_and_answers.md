# Module 1 Homework: Docker & SQL

## Question

### Question 1. Knowing docker tags

Run the command to get information on Docker 

```docker --help```

Now run the command to get help on the "docker build" command:

```docker build --help```

Do the same for "docker run".

Which tag has the following text? - *Automatically remove the container when it exits* 

- `--delete`
- `--rc`
- `--rmc`
- `--rm`


### Question 2. Understanding docker first run 

Run docker with the python:3.9 image in an interactive mode and the entrypoint of bash.
Now check the python modules that are installed ( use ```pip list``` ). 

What is version of the package *wheel* ?

- 0.42.0
- 1.0.0
- 23.0.1
- 58.1.0


### Prepare Postgres

Run Postgres and load data as shown in the videos
We'll use the green taxi trips from September 2019:

```wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-09.csv.gz```

You will also need the dataset with zones:

```wget https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv```

Download this data and put it into Postgres (with jupyter notebooks or with a pipeline)


### Question 3. Count records 

How many taxi trips were totally made on September 18th 2019?

Tip: started and finished on 2019-09-18. 

Remember that `lpep_pickup_datetime` and `lpep_dropoff_datetime` columns are in the format timestamp (date and hour+min+sec) and not in date.

- 15767
- 15612
- 15859
- 89009

### Question 4. Longest trip for each day

Which was the pick up day with the longest trip distance?
Use the pick up time for your calculations.

Tip: For every trip on a single day, we only care about the trip with the longest distance. 

- 2019-09-18
- 2019-09-16
- 2019-09-26
- 2019-09-21


### Question 5. Three biggest pick up Boroughs

Consider lpep_pickup_datetime in '2019-09-18' and ignoring Borough has Unknown

Which were the 3 pick up Boroughs that had a sum of total_amount superior to 50000?
 
- "Brooklyn" "Manhattan" "Queens"
- "Bronx" "Brooklyn" "Manhattan"
- "Bronx" "Manhattan" "Queens" 
- "Brooklyn" "Queens" "Staten Island"


### Question 6. Largest tip

For the passengers picked up in September 2019 in the zone name Astoria which was the drop off zone that had the largest tip?
We want the name of the zone, not the id.

Note: it's not a typo, it's `tip` , not `trip`

- Central Park
- Jamaica
- JFK Airport
- Long Island City/Queens Plaza



### Terraform

In this section homework we'll prepare the environment by creating resources in GCP with Terraform.

In your VM on GCP/Laptop/GitHub Codespace install Terraform. 
Copy the files from the course repo
[here](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/01-docker-terraform/1_terraform_gcp/terraform) to your VM/Laptop/GitHub Codespace.

Modify the files as necessary to create a GCP Bucket and Big Query Dataset.


## Question 7. Creating Resources

After updating the main.tf and variable.tf files run:

```
terraform apply
```

## Answer

### Answer 1. Knowing docker tags

![Answer 1. Knowing docker tags](homework_attachement/1.png)

As explained in the picture above, the answer is **--rm**

### Answer 2. Understanding docker first run

![Answer 2. Understanding docker first run](homework_attachement/2.png)

As explained in the picture above, the package *wheel* has a version of **0.42.0**


### Answer 3. Count records 

![Answer 3. Count records ](homework_attachement/3.png)

The total number of taxi trips made on September 18, 2019 was **15,612**.

### Answer 4. Longest trip for each day

![Answer 4. Longest trip for each day](homework_attachement/4.png)

The pick-up day that has the longest travel distance occurs on date **2019-09-26**


### Answer 5. Three biggest pick up Boroughs

![Answer 5. Three biggest pick up Boroughs](homework_attachement/5.png)

3 pick up Boroughs that had a sum of total_amount superior to 50000 are **"Brooklyn" "Manhattan" "Queens"**


### Answer 6. Largest tip

![Answer 6. Largest tip](homework_attachement/6.png)

For passengers picked up in September 2019 in the zone with the name Astoria, the drop zone that has the largest tip is **JFK Airport**

### Answer 7. Creating Resources

result of running ```terraform apply```

![Answer 7. Creating Resources](homework_attachement/7.png)