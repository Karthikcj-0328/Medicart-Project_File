package com.medicart.backend.pharmacy.service;

import com.medicart.backend.pharmacy.entity.Stock;
import com.medicart.backend.pharmacy.repository.StockRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class StockService {

    private final StockRepository stockRepository;

    public StockService(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    public Stock save(Stock stock) {
        return stockRepository.save(stock);
    }

    public Optional<Stock> findById(Long id) {
        return stockRepository.findById(id);
    }
}
