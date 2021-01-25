using System;
using System.Collections.Generic;

namespace TC3.Models
{
    public partial class CustomerCard
    {
        public int CustomerCardId { get; set; }
        public int CustomerId { get; set; }
        public bool? Preferred { get; set; }
        public string Number { get; set; }
        public DateTime Expires { get; set; }
        public string Ccd { get; set; }

        public virtual Customer Customer { get; set; }
    }
}
