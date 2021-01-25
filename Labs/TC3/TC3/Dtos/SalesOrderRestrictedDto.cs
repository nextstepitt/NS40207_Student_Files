using System;
using TC3.Models;

namespace TC3.DTOs {

    public class SalesOrderRestrictedDto : SalesOrder {

        public SalesOrderRestrictedDto() {
        }

        public SalesOrderRestrictedDto(SalesOrder salesOrder) : base(salesOrder) {

            CardNumber = null;
            CardExpires = null;
        }
    }
}
