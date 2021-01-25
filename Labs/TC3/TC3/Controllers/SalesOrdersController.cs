// SalesOrdersControllers.cs
// Copyright © 2018-2021 NextStep IT Training. All rights reserved.
//

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TC3.DTOs;
using TC3.Models;
using TC3.Services;

namespace TC3.Controllers {

    [Route("api/[controller]")]
    [ApiController]
    public class SalesOrdersController : ControllerBase {

        SalesOrdersService salesOrdersService;

        public SalesOrdersController(SalesOrdersService salesOrdersService) {

            this.salesOrdersService = salesOrdersService;
        }

        // GET api/salesorders/
        [HttpGet]
        public ActionResult<List<SalesOrderRestrictedDto>> Get()
        {

            IEnumerable<SalesOrder> salesOrders = salesOrdersService.read();

            List<SalesOrderRestrictedDto> salesOrderDtos = new List<SalesOrderRestrictedDto>();

            foreach (SalesOrder salesOrder in salesOrders) {

                salesOrderDtos.Add(new SalesOrderRestrictedDto(salesOrder));
            }

            return salesOrderDtos;
        }

        // GET api/salesorders/5
        [HttpGet("{id}")]
        public ActionResult<SalesOrderRestrictedDto> Get(string salesOrderId)
        {

            SalesOrder salesOrder = salesOrdersService.read(salesOrderId);

            return new SalesOrderRestrictedDto(salesOrder);
        }

        // POST api/salesorders
        [HttpPost]
        public void Post([FromBody] SalesOrderRestrictedDto salesOrderDto) {

            salesOrdersService.create(salesOrderDto);
        }

        // PUT api/salesorders/5
        [HttpPut("{salesOrderId}")]
        public void Put(string salesOrderId, SalesOrder salesOrderDto) {

            salesOrdersService.update(salesOrderId, salesOrderDto);
        }

        // DELETE api/salesorders/5
        [HttpDelete("{salesOrderId}")]
        public void Delete(string salesOrderId) {

            SalesOrder salesOrder = salesOrdersService.read(salesOrderId);

            if (salesOrder != null) {

                salesOrdersService.delete(salesOrder);

            } else {

                throw new ArgumentException("sales order not found");
            }
        }
    }
}
