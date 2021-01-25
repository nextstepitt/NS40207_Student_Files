using System;
using System.Collections.Generic;

namespace TC3.Models
{
    public partial class CountryCode
    {
        public CountryCode()
        {
            Customers = new HashSet<Customer>();
        }

        public string CountryCodeId { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Customer> Customers { get; set; }
    }
}
