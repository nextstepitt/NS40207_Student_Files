using System;
using System.Collections.Generic;

namespace TC3.Models
{
    public partial class PaymentType
    {
        public PaymentType()
        {
            SalesOrders = new HashSet<SalesOrder>();
        }

        public int PaymentTypeId { get; set; }
        public string Name { get; set; }

        public virtual ICollection<SalesOrder> SalesOrders { get; set; }
    }
}
