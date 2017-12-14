package com.coinchecker.model;

public class Coin  {

	private String id;
	private String name;
	private String symbol;
	private int rank;
	private String priceEuro;
	private double priceBtc;
	private double dayVolumeEuro;
	private double marketCapEuro;
	private double availableSupply;
	private double totalSupply;
	private double maxSupply;
	private double hourChange;
	private double dayChange;
	private double weekChange;
	private double lastUpdated;
	
	private String imgLocation;

	public String getImgLocation() {
		return imgLocation;
	}

	public void setImgLocation(String imgLocation) {
		this.imgLocation = imgLocation;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getPriceEur() {
		return priceEuro;
	}

	public void setPriceEur(String string) {
		this.priceEuro = string;
	}

	public double getPriceBtc() {
		return priceBtc;
	}

	public void setPriceBtc(double priceBtc) {
		this.priceBtc = priceBtc;
	}

	public double getDayVolumeEur() {
		return dayVolumeEuro;
	}

	public void setDayVolumeEur(double dayVolumeUsd) {
		this.dayVolumeEuro = dayVolumeUsd;
	}

	public double getMarketCapEur() {
		return marketCapEuro;
	}

	public void setMarketCapEur(double marketCapUsd) {
		this.marketCapEuro = marketCapUsd;
	}

	public double getAvailableSupply() {
		return availableSupply;
	}

	public void setAvailableSupply(double availableSupply) {
		this.availableSupply = availableSupply;
	}

	public double getTotalSupply() {
		return totalSupply;
	}

	public void setTotalSupply(double totalSupply) {
		this.totalSupply = totalSupply;
	}

	public double getMaxSupply() {
		return maxSupply;
	}

	public void setMaxSupply(double maxSupply) {
		this.maxSupply = maxSupply;
	}

	public double getHourChange() {
		return hourChange;
	}

	public void setHourChange(double hourChange) {
		this.hourChange = hourChange;
	}

	public double getDayChange() {
		return dayChange;
	}

	public void setDayChange(double dayChange) {
		this.dayChange = dayChange;
	}

	public double getWeekChange() {
		return weekChange;
	}

	public void setWeekChange(double weekChange) {
		this.weekChange = weekChange;
	}

	public double getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(double lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}
    
}
