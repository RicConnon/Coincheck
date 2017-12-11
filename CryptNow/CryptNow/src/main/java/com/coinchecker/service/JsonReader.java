package com.coinchecker.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonReader {

	public String parseJson(JSONObject json){
		JSONObject obj = json;
		String price_usd = "";
		String pageName = obj.getJSONObject("pageInfo").getString("pageName");
	
		JSONArray arr = obj.getJSONArray("posts");
		for (int i = 0; i < arr.length(); i++)
		{
		    price_usd = arr.getJSONObject(i).getString("price_usd");
		}
		
		return price_usd;
	}

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			if (cp == 91) {
				continue;
			}
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream is = new URL(url).openStream();
		try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			JSONObject json = new JSONObject(jsonText);
			System.out.print(json);
			return json;
		} finally {
			is.close();
		}
	}

	public static void main(String[] args) throws IOException, JSONException {
		JSONObject json = readJsonFromUrl("https://graph.facebook.com/19292868552");
		System.out.println(json.toString());
		System.out.println(json.get("id"));
	}
}