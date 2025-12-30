package com.medicart.backend.pharmacy.controller;

import com.medicart.backend.pharmacy.entity.Stock;
import com.medicart.backend.pharmacy.service.StockService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/stocks")
public class StockController {

    private final StockService stockService;

    public StockController(StockService stockService) {
        this.stockService = stockService;
    }

    // CREATE / UPDATE STOCK
    @PostMapping
    public Stock createStock(@RequestBody Stock stock) {
        return stockService.save(stock);
    }

    // GET STOCK BY ID
    @GetMapping("/{id}")
    public Stock getStockById(@PathVariable Long id) {
        return stockService.findById(id).orElse(null);
    }
}
