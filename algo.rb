def cancellation_notice
  past_due_invoices = find_past_due_invoice
  find_past_due_subscribers(past_due_invoices)
end

def find_past_due_invoice
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
    if past_due_invoices.include?(subscriber.id)
      subscribers_past_due << subscriber
    end
  end

  subscribers_past_due
end
