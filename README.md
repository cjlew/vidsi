# Vidsi
### Lifion Case Study

This repo contains the required material for the Vidsi Case Study, as well as a basic rails project that was used for testing SQL queries.

## Entity Relationship Diagram

![Vidsi ERD](Lifion_ERD.jpg)

## SQL Query

```sql
SELECT
  subscribers.username as User, videos.title as Video, count(streams) as Views
FROM
  streams
JOIN
  subscribers on subscriber_id = subscribers.id
JOIN
  videos on video_id = videos.id
GROUP BY
  videos.title, subscribers.username
ORDER BY count(streams) DESC LIMIT 20;
```

## Algorithm
In order to find all of the subscribers who have not payed their invoices, we can use a SQL query.
```sql

SELECT
  subscribers.id, subscriber.email
FROM
  subscribers
JOIN
  invoices on subscriber_id = subscribers.id
WHERE
  invoices.due_date > CURRENT_DATE() AND invoices.status == 'Unpaid'
```
From these results we can send emails to users who need to be sent a cancellation notice.


If we do not want to use SQL, we can use the following algorithm to find the subscribers in need of a cancellation notice in linear time.

```ruby
def cancellation_notice
  past_due_invoices = find_past_due_invoice
  # From here we have a set of subscriber_ids that are past due on their payments

  find_past_due_subscribers(past_due_invoices)
  #returns all subscribers who are past due and need a cancellation notice
end

def find_past_due_invoice
  # By using a set we ensure a linear time constant later in our Algorithm when selecting subscribers
  past_due = Set.new

  Invoice.all.each do |invoice|
    if invoice.status == 'Unpaid' && invoices.due_date > DateTime.now
      past_due.add(invoice.subscriber_id)
    end
  end

  past_due
end

def find_past_due_subscribers(past_due_invoices)
  subscribers_past_due = Array.new

  Subscriber.all.each do |subscriber|
    # Constant time to check if a set includes a value
    if past_due_invoices.include?(subscriber.id)
      subscribers_past_due << subscriber
    end
  end

  subscribers_past_due
end
```
