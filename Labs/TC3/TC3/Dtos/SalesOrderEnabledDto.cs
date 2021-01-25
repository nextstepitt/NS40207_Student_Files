using System;
using TC3.Models;

namespace TC3.DTOs {

    public class SalesOrderEnabledDto : SalesOrder {

        public SalesOrderEnabledDto() {
        }

        public SalesOrderEnabledDto(SalesOrder salesOrder) : base(salesOrder) {

        }
    }
}
