package com.coinchecker.controller;

import java.io.IOException;
import java.math.BigDecimal;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coinchecker.model.Coin;
import com.coinchecker.service.JsonReader;

@Controller
public class CoinController {
	
	@RequestMapping(value = "/coins")
	public String sampleApi(Model model) throws JSONException, IOException {

		JSONObject json = JsonReader.readJsonFromUrl("https://api.coinmarketcap.com/v1/ticker/?convert=EUR&limit=10");

		System.out.println(json);

		Coin coin = new Coin();
		coin = parseJson(coin, json);

		model.addAttribute("bitcoin_price", coin.getPriceUsd());
	
		return "dashboard";
	}
	
	@RequestMapping(value = "/bitcoin")
	public String bitcoin(Model model) throws JSONException, IOException {

		JSONObject json = JsonReader.readJsonFromUrl("https://api.coinmarketcap.com/v1/ticker/?limit=1");

		System.out.println(json);

		Coin coin = new Coin();
		coin = parseJson(coin, json);

		model.addAttribute("bitcoin_price", coin.getPriceUsd());
		BigDecimal bd = new BigDecimal(coin.getMarketCapUsd());
		model.addAttribute("market_cap_", bd);
		BigDecimal bd2 = new BigDecimal(coin.getDayVolumeUsd());
		model.addAttribute("day_volume_usd", bd2);
		BigDecimal bd3 = new BigDecimal(coin.getTotalSupply());
		model.addAttribute("total_supply", bd3);
		model.addAttribute("change_1h", coin.getHourChange());
		model.addAttribute("change_24h", coin.getDayChange());
		model.addAttribute("change_7d", coin.getWeekChange());

		return "bitcoin";
	}

	public Coin parseJson(Coin coin, JSONObject json) {
		JSONObject obj = json;

		coin.setId(obj.getString("id"));
		coin.setName(obj.getString("name"));
		coin.setSymbol(obj.getString("symbol"));
		coin.setRank(obj.getInt("rank"));
		coin.setPriceUsd(obj.getDouble("price_eur"));
		coin.setPriceBtc(obj.getDouble("price_btc"));
		coin.setDayVolumeUsd(obj.getDouble("24h_volume_eur"));
		coin.setMarketCapUsd(obj.getDouble("market_cap_eur"));
		coin.setAvailableSupply(obj.getDouble("available_supply"));
		coin.setTotalSupply(obj.getDouble("total_supply"));
		coin.setMaxSupply(obj.getDouble("max_supply"));
		coin.setHourChange(obj.getDouble("percent_change_1h"));
		coin.setDayChange(obj.getDouble("percent_change_24h"));
		coin.setWeekChange(obj.getDouble("percent_change_7d"));
		coin.setLastUpdated(obj.getDouble("last_updated"));

		return coin;

	}

}
