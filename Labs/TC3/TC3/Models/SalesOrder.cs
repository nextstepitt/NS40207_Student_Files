
using System;
using System.Collections.Generic;

namespace TC3.Models
{
    public partial class SalesOrder {
        public SalesOrder() {
            SalesOrderItems = new HashSet<SalesOrderItem>();
        }

        public SalesOrder(SalesOrder salesOrder) : this() {

            this.SalesOrderId = salesOrder.SalesOrderId;
            this.OrderDate = salesOrder.OrderDate;
            this.CustomerId = salesOrder.CustomerId;
            this.Total = salesOrder.Total;
            this.PaymentTypeId = salesOrder.PaymentTypeId;
            this.CardNumber = salesOrder.CardNumber;
            this.CardExpires = salesOrder.CardExpires;
            this.Filled = salesOrder.Filled;
        }

        public int SalesOrderId { get; set; }
        public DateTime OrderDate { get; set; }
        public int? CustomerId { get; set; }
        public decimal? Total { get; set; }
        public int? PaymentTypeId { get; set; }
        public string CardNumber { get; set; }
        public DateTime? CardExpires { get; set; }
        public DateTime? Filled { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual PaymentType PaymentType { get; set; }
        public virtual ICollection<SalesOrderItem> SalesOrderItems { get; set; }

        //    public override bool Equals(object obj) {
        //        return obj is SalesOrder order &&
        //               SalesOrderId == order.SalesOrderId &&
        //               OrderDate == order.OrderDate &&
        //               CustomerId == order.CustomerId &&
        //               Total == order.Total &&
        //               PaymentTypeId == order.PaymentTypeId &&
        //               CardNumber == order.CardNumber &&
        //               CardExpires == order.CardExpires &&
        //               Filled == order.Filled;
        //    }

        //    public static bool operator ==(SalesOrder left, object obj) {
        //        return obj is SalesOrder order &&
        //               left.SalesOrderId == order.SalesOrderId &&
        //               left.OrderDate == order.OrderDate &&
        //               left.CustomerId == order.CustomerId &&
        //               left.Total == order.Total &&
        //               left.PaymentTypeId == order.PaymentTypeId &&
        //               left.CardNumber == order.CardNumber &&
        //               left.CardExpires == order.CardExpires &&
        //               left.Filled == order.Filled;
        //    }

        //    public static bool operator !=(SalesOrder left, object obj) {

        //        return !(left == obj);
        //    }
    }
}
