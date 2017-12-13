package com.coinchecker.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.coinchecker.model.Coin;
import com.coinchecker.service.JsonReader;

@Controller
public class CoinController {

	@RequestMapping(value = "/coins")
	public String sampleApi(Model model) throws JSONException, IOException {
		
		List<Coin> coins = addCoins();

		for (int i = 0; i < coins.size(); i++) {
			switch (coins.get(i).getRank()) {
			case 1:
				model.addAttribute("rank1_price", coins.get(0).getPriceEur());
				model.addAttribute("rank1", coins.get(0).getName());
				break;
			case 2:
				model.addAttribute("rank2_price", coins.get(1).getPriceEur());
				model.addAttribute("rank2", coins.get(1).getName());
				break;
			case 3:
				model.addAttribute("rank3_price", coins.get(2).getPriceEur());
				model.addAttribute("rank3", coins.get(2).getName());
				break;
			case 4:
				model.addAttribute("rank4_price", coins.get(3).getPriceEur());
				model.addAttribute("rank4", coins.get(3).getName());
				break;
			case 5:
				model.addAttribute("rank5_price", coins.get(4).getPriceEur());
				model.addAttribute("rank5", coins.get(4).getName());
				break;
			case 6:
				model.addAttribute("rank6_price", coins.get(5).getPriceEur());
				model.addAttribute("rank6", coins.get(5).getName());
				break;
			case 7:
				model.addAttribute("rank7_price", coins.get(6).getPriceEur());
				model.addAttribute("rank7", coins.get(6).getName());
				break;
			default:
				break;
			}
		}

		return "dashboard";
	}

	@RequestMapping(value = "/details/{rank}")
	public String coinPage(Model model, @PathVariable int rank) throws JSONException, IOException {
		
		List<Coin> coins = addCoins();
		
		Coin coin = coins.get(rank - 1);
		DecimalFormat format = new DecimalFormat("#,###.00");
		
		model.addAttribute("coin_name", coin.getName());

		model.addAttribute("coin_price", coin.getPriceEur());
		model.addAttribute("market_cap_eur", format.format(coin.getMarketCapEur()));
		model.addAttribute("day_volume_eur", format.format(coin.getDayVolumeEur()));
		model.addAttribute("total_supply", format.format(coin.getTotalSupply()));
		model.addAttribute("change_1h", coin.getHourChange());
		model.addAttribute("change_24h", coin.getDayChange());
		model.addAttribute("change_7d", coin.getWeekChange());

		return "cryptocoin";
	}

	public Coin parseJson(JSONObject json) {
		JSONObject obj = json;

		DecimalFormat format = new DecimalFormat("##.00");
		Coin coin = new Coin();
		coin.setId(obj.getString("id"));
		coin.setName(obj.getString("name"));
		coin.setSymbol(obj.getString("symbol"));
		coin.setRank(obj.getInt("rank"));
		coin.setPriceEur(format.format(obj.getDouble("price_eur")));
		coin.setPriceBtc(obj.getDouble("price_btc"));
		coin.setDayVolumeEur(obj.getDouble("24h_volume_eur"));
		coin.setMarketCapEur(obj.getDouble("market_cap_eur"));
		coin.setAvailableSupply(obj.getDouble("available_supply"));
		coin.setTotalSupply(obj.getDouble("total_supply"));
		coin.setMaxSupply(obj.isNull("max_supply") ? 0.0 : obj.getDouble("max_supply"));
		coin.setHourChange(obj.getDouble("percent_change_1h"));
		coin.setDayChange(obj.getDouble("percent_change_24h"));
		coin.setWeekChange(obj.getDouble("percent_change_7d"));
		coin.setLastUpdated(obj.getDouble("last_updated"));

		return coin;

	}

	public List<Coin> addCoins() throws JSONException, IOException {

		List<Coin> coins = new ArrayList<Coin>();

		for (int start = 0; start <= 9; start++) {
			JSONObject json = JsonReader.readJsonFromUrl(
					"https://api.coinmarketcap.com/v1/ticker/?convert=EUR&start=" + start + "&limit=1");
			Coin coin = parseJson(json);
			System.out.println(coin);
			coins.add(coin);
		}

		return coins;
	}
}
