using System;
using System.Collections.Generic;
using TC3.Models;

namespace TC3.Services {

    public class SalesOrdersService {

        private TC3Context dbContext;

        public SalesOrdersService(TC3Context tc3Context) {

            this.dbContext = tc3Context;
        }

        public SalesOrder create(SalesOrder salesOrder) {

            dbContext.Add(salesOrder);
            dbContext.SaveChanges();

            return salesOrder;
        }

        public void delete(SalesOrder salesOrder) {

            dbContext.Remove(salesOrder);
            dbContext.SaveChanges();
        }

        public IEnumerable<SalesOrder> read() {

            return dbContext.SalesOrders;
        }

        public SalesOrder read(string id) {

            return dbContext.SalesOrders.Find(id);
        }

        public void update(string salesOrderId, SalesOrder salesOrder) {

            // Double-check for a mismatch on the salesorderid.

            if (salesOrderId.Equals(salesOrder.SalesOrderId) == false) {

                throw new ArgumentOutOfRangeException("SalesOrderId mismatch");
            }

            dbContext.SalesOrders.Update(salesOrder);
            dbContext.SaveChanges();
        }
    }
}
