package com.coinchecker.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.coinchecker.model.Coin;
import com.coinchecker.service.JsonReader;

@Controller

public class CoinController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	boolean refresh = false;

	@RequestMapping(value = "/coins")
	public String sampleApi(Model model, HttpServletRequest request) throws JSONException, IOException {

		HttpSession httpSession = request.getSession();

		@SuppressWarnings("unchecked")
		List<Coin> coins = (List<Coin>) httpSession.getAttribute("coins");

		if (coins == null || refresh == true) {
			coins = addCoins();
			refresh = false;
			System.out.println("New Coins!");
		}

		httpSession.setAttribute("coins", coins);

		for (int i = 0; i < coins.size(); i++) {
			switch (coins.get(i).getRank()) {
			case 1:
				model.addAttribute("rank1_price", coins.get(0).getPriceEur());
				model.addAttribute("rank1", coins.get(0).getName());
				model.addAttribute("rank1_pic", coins.get(0).getImgLocation());
				break;
			case 2:
				model.addAttribute("rank2_price", coins.get(1).getPriceEur());
				model.addAttribute("rank2", coins.get(1).getName());
				model.addAttribute("rank2_pic", coins.get(1).getImgLocation());
				break;
			case 3:
				model.addAttribute("rank3_price", coins.get(2).getPriceEur());
				model.addAttribute("rank3", coins.get(2).getName());
				model.addAttribute("rank3_pic", coins.get(2).getImgLocation());
				break;
			case 4:
				model.addAttribute("rank4_price", coins.get(3).getPriceEur());
				model.addAttribute("rank4", coins.get(3).getName());
				model.addAttribute("rank4_pic", coins.get(3).getImgLocation());
				break;
			case 5:
				model.addAttribute("rank5_price", coins.get(4).getPriceEur());
				model.addAttribute("rank5", coins.get(4).getName());
				model.addAttribute("rank5_pic", coins.get(4).getImgLocation());
				break;
			case 6:
				model.addAttribute("rank6_price", coins.get(5).getPriceEur());
				model.addAttribute("rank6", coins.get(5).getName());
				model.addAttribute("rank6_pic", coins.get(5).getImgLocation());
				break;
			case 7:
				model.addAttribute("rank7_price", coins.get(6).getPriceEur());
				model.addAttribute("rank7", coins.get(6).getName());
				model.addAttribute("rank7_pic", coins.get(6).getImgLocation());
				break;
			case 8:
				model.addAttribute("rank8_price", coins.get(7).getPriceEur());
				model.addAttribute("rank8", coins.get(7).getName());
				model.addAttribute("rank8_pic", coins.get(7).getImgLocation());
				break;
			case 9:
				model.addAttribute("rank9_price", coins.get(8).getPriceEur());
				model.addAttribute("rank9", coins.get(8).getName());
				model.addAttribute("rank9_pic", coins.get(8).getImgLocation());
				break;
			case 10:
				model.addAttribute("rank10_price", coins.get(9).getPriceEur());
				model.addAttribute("rank10", coins.get(9).getName());
				model.addAttribute("rank10_pic", coins.get(9).getImgLocation());
				break;
			default:
				break;
			}
			double mover = 0;
			double loser = 0;
			if (coins.get(i).getDayChange() > mover) {
				mover = coins.get(i).getDayChange();
				model.addAttribute("moverCoin", coins.get(i).getName());
				model.addAttribute("mover", mover);
			}
			if (coins.get(i).getDayChange() < loser) {
				loser = coins.get(i).getDayChange();
				model.addAttribute("loserCoin", coins.get(i).getName());
				model.addAttribute("loser", loser);
			}
		}

		return "dashboard";
	}

	@RequestMapping(value = "/reload")
	public String refresh() {
		refresh = true;

		return "redirect:/coins.html";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/details/{rank}")
	public String coinPage(Model model, @PathVariable int rank, HttpServletRequest request)
			throws JSONException, IOException {

		HttpSession httpSession = request.getSession(false);
		// False because we do not want it to create a new session if it does
		// not exist.
		List<Coin> coins = null;
		Coin coin = null;
		if (httpSession != null) {
			coins = (List<Coin>) httpSession.getAttribute("coins");
		}

		if (coins != null) {

			coin = coins.get(rank - 1);
		} else {

			List<Coin> newCoins = addCoins();

			coin = newCoins.get(rank - 1);

		}

		DecimalFormat format = new DecimalFormat("#,###.00");

		model.addAttribute("coin_name", coin.getName());

		model.addAttribute("coin_price", coin.getPriceEur());
		model.addAttribute("market_cap_eur", format.format(coin.getMarketCapEur()));
		model.addAttribute("day_volume_eur", format.format(coin.getDayVolumeEur()));
		model.addAttribute("total_supply", format.format(coin.getTotalSupply()));
		model.addAttribute("change_1h", coin.getHourChange());
		model.addAttribute("change_24h", coin.getDayChange());
		model.addAttribute("change_7d", coin.getWeekChange());
		model.addAttribute("img_location", coin.getImgLocation());

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

		coin.setImgLocation("/CryptNow/images/" + obj.getString("id") + ".png");

		return coin;

	}

	public List<Coin> addCoins() throws JSONException, IOException {

		List<Coin> coins = new ArrayList<Coin>();

		for (int start = 0; start <= 9; start++) {
			JSONObject json = JsonReader.readJsonFromUrl(
					"https://api.coinmarketcap.com/v1/ticker/?convert=EUR&start=" + start + "&limit=1");
			Coin coin = parseJson(json);
			// System.out.println(coin);
			coins.add(coin);
		}

		return coins;
	}

}
