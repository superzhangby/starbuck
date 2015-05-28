package form;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;
import org.mybeans.form.FormBean;

import com.google.gson.JsonObject;

public class DataForm extends FormBean {
	private String name;
	private String phone;
	private String q3;
	private String website;
	private String[] q5whatData;
	private String q6;
	private String q7;
	private String q7_1;
	private String q8;
	private String q8_1;
	private String q8_1_1;
	private String q8_2;
	private String q9;
	private String q9_1;
	private String q9_1_1;
	private String q9_2;
	private String q9_2_1;
	private String q9_2_1_1;
	private String q9_2_2;
	private String q9_2_2_1;
	private String q9_3;
	private String q9_4;
	private String q9_5;
	private String q10;
	private String q10_1_1;
	private String q11;
	private String q12;
	private String q12_1;
	private String q13;
	private String q13_1;
	private String[] q14whatWay;
	private String q15;
	private String q15_1;
	private String q16;
	private String q16_1;
	private String q17;
	private String q17_1;
	private String q17_2;
	private String q17_3;
	private String q17_3_1;
	private String q17_3_2;
	private String address1;
	private String address2;//opt
	private String city;
	private String state;
	private String zipcode;
	private String action;
	private String array1;
	private String array2;

	public String getArray1() {
		return array1;
	}

	public void setArray1(String s) {
		this.array1 = s.trim();
	}
	public void setArray1() {
		this.array1 = Arrays.toString(q5whatData);
	}

	public String getArray2() {
		return array2;
	}

	public void setArray2(String s) {
		this.array2 = s.trim();
	}
	public void setArray2() {
		this.array2 = Arrays.toString(q14whatWay);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name.trim();
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone.trim();
	}

	public String getQ3() {
		return q3;
	}

	public void setQ3(String q3) {
		this.q3 = q3;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website.trim();
	}

	public String[] getQ5whatData() {
		return q5whatData;
	}

	public void setQ5whatData(String[] q5) {
		this.q5whatData = q5;
	}

	public String getQ6() {
		return q6;
	}

	public void setQ6(String q6) {
		this.q6 = q6;
	}

	public String getQ7() {
		return q7;
	}

	public void setQ7(String q7) {
		this.q7 = q7;
	}

	public String getQ7_1() {
		return q7_1;
	}

	public void setQ7_1(String q7_1) {
		this.q7_1 = q7_1;
	}

	public String getQ8() {
		return q8;
	}

	public void setQ8(String q8) {
		this.q8 = q8;
	}

	public String getQ8_1() {
		return q8_1;
	}

	public void setQ8_1(String q8_1) {
		this.q8_1 = q8_1;
	}

	public String getQ8_1_1() {
		return q8_1_1;
	}

	public void setQ8_1_1(String q8_1_1) {
		this.q8_1_1 = q8_1_1;
	}

	public String getQ8_2() {
		return q8_2;
	}

	public void setQ8_2(String q8_2) {
		this.q8_2 = q8_2;
	}

	public String getQ9() {
		return q9;
	}

	public void setQ9(String q9) {
		this.q9 = q9;
	}

	public String getQ9_1() {
		return q9_1;
	}

	public void setQ9_1(String q9_1) {
		this.q9_1 = q9_1;
	}

	public String getQ9_1_1() {
		return q9_1_1;
	}

	public void setQ9_1_1(String q9_1_1) {
		this.q9_1_1 = q9_1_1;
	}

	public String getQ9_2() {
		return q9_2;
	}

	public void setQ9_2(String q9_2) {
		this.q9_2 = q9_2;
	}

	public String getQ9_2_1() {
		return q9_2_1;
	}

	public void setQ9_2_1(String q9_2_1) {
		this.q9_2_1 = q9_2_1;
	}

	public String getQ9_2_1_1() {
		return q9_2_1_1;
	}

	public void setQ9_2_1_1(String q9_2_1_1) {
		this.q9_2_1_1 = q9_2_1_1.trim();
	}

	public String getQ9_2_2() {
		return q9_2_2;
	}

	public void setQ9_2_2(String q9_2_2) {
		this.q9_2_2 = q9_2_2;
	}

	public String getQ9_2_2_1() {
		return q9_2_2_1;
	}

	public void setQ9_2_2_1(String q9_2_2_1) {
		this.q9_2_2_1 = q9_2_2_1.trim();
	}

	public String getQ9_3() {
		return q9_3;
	}

	public void setQ9_3(String q9_3) {
		this.q9_3 = q9_3;
	}

	public String getQ9_4() {
		return q9_4;
	}

	public void setQ9_4(String q9_4) {
		this.q9_4 = q9_4;
	}

	public String getQ9_5() {
		return q9_5;
	}

	public void setQ9_5(String q9_5) {
		this.q9_5 = q9_5;
	}

	public String getQ10() {
		return q10;
	}

	public void setQ10(String q10) {
		this.q10 = q10;
	}

	public String getQ10_1_1() {
		return q10_1_1;
	}

	public void setQ10_1_1(String q10_1_1) {
		this.q10_1_1 = q10_1_1.trim();
	}

	public String getQ11() {
		return q11;
	}

	public void setQ11(String q11) {
		this.q11 = q11.trim();
	}

	public String getQ12() {
		return q12;
	}

	public void setQ12(String q12) {
		this.q12 = q12;
	}

	public String getQ12_1() {
		return q12_1;
	}

	public void setQ12_1(String q12_1) {
		this.q12_1 = q12_1;
	}

	public String getQ13() {
		return q13;
	}

	public void setQ13(String q13) {
		this.q13 = q13;
	}

	public String getQ13_1() {
		return q13_1;
	}

	public void setQ13_1(String q13_1) {
		this.q13_1 = q13_1;
	}

	public String[] getQ14whatWay() {
		return q14whatWay;
	}

	public void setQ14whatWay(String[] q14whatWay) {
		this.q14whatWay = q14whatWay;
	}

	public String getQ15() {
		return q15;
	}

	public void setQ15(String q15) {
		this.q15 = q15;
	}

	public String getQ15_1() {
		return q15_1;
	}

	public void setQ15_1(String q15_1) {
		this.q15_1 = q15_1;
	}

	public String getQ16() {
		return q16;
	}

	public void setQ16(String q16) {
		this.q16 = q16;
	}

	public String getQ16_1() {
		return q16_1;
	}

	public void setQ16_1(String q16_1) {
		this.q16_1 = q16_1.trim();
	}

	public String getQ17() {
		return q17;
	}

	public void setQ17(String q17) {
		this.q17 = q17.trim();
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
	public String getQ17_1() {
		return q17_1;
	}

	public void setQ17_1(String q17_1) {
		this.q17_1 = q17_1;
	}

	public String getQ17_2() {
		return q17_2;
	}

	public void setQ17_2(String q17_2) {
		this.q17_2 = q17_2;
	}

	public String getQ17_3() {
		return q17_3;
	}

	public void setQ17_3(String q17_3) {
		this.q17_3 = q17_3;
	}

	public String getQ17_3_1() {
		return q17_3_1;
	}

	public void setQ17_3_1(String q17_3_1) {
		this.q17_3_1 = q17_3_1;
	}

	public String getQ17_3_2() {
		return q17_3_2;
	}

	public void setQ17_3_2(String q17_3_2) {
		this.q17_3_2 = q17_3_2;
	}


	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2.trim();
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city.trim();
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state.trim();
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode.trim();
	}

	public JsonObject getJson() {
		JsonObject object = new JsonObject();
		object.addProperty("name", name);
		object.addProperty("phone", phone);
		object.addProperty("q3", q3);
		object.addProperty("website", website);
		object.addProperty("q5", Arrays.toString(q5whatData));
		object.addProperty("q6", q6);
		object.addProperty("q7", q7);
		object.addProperty("q7_1", q7_1);
		object.addProperty("q8", q8);
		object.addProperty("q8_1", q8_1);
		object.addProperty("q8_1_1", q8_1_1);
		object.addProperty("q8_2", q8_2);
		object.addProperty("q9", q9);
		object.addProperty("q9_1", q9_1);
		object.addProperty("q9_1_1", q9_1_1);
		object.addProperty("q9_2", q9_2);
		object.addProperty("q9_2_1", q9_2_1);
		object.addProperty("q9_2_1_1", q9_2_1_1);
		object.addProperty("q9_2_2", q9_2_2);
		object.addProperty("q9_2_2_1", q9_2_2_1);
		object.addProperty("q9_3", q9_3);
		object.addProperty("q9_4", q9_4);
		object.addProperty("q9_5", q9_5);
		object.addProperty("q10", q10);
		object.addProperty("q10_1_1", q10_1_1);
		object.addProperty("q11", q11);
		object.addProperty("q12", q12);
		object.addProperty("q12_1", q12_1);
		object.addProperty("q13", q13);
		object.addProperty("q13_1", q13_1);
		object.addProperty("q14whatWay", Arrays.toString(q14whatWay));
		object.addProperty("q15", q15);
		object.addProperty("q15_1", q15_1);
		object.addProperty("q16", q16);
		object.addProperty("q16_1", q16_1);
		object.addProperty("q17", q17);
		object.addProperty("q17_1", q17_1);
		object.addProperty("q17_2", q17_2);
		object.addProperty("q17_3", q17_3);
		object.addProperty("q17_3_1", q17_3_1);
		object.addProperty("q17_3_2", q17_3_2);
		object.addProperty("address1", address1);
		object.addProperty("address2", address2);
		object.addProperty("state", state);
		object.addProperty("city", city);
		object.addProperty("zipcode", zipcode);

		return object;
	}

	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();

		if (name == null || name.trim().length() == 0)
			errors.add("Question 1: Name is required.");

		if (phone == null || phone.trim().length() == 0)
			errors.add("Question 2: Phone number is required.");

		for (int i = 0; i < phone.length(); i++) {
			if (phone.charAt(i) > '9' || phone.charAt(i) < '0')
				errors.add("Question 2: Invalid Phone Number!");
		}

		if (q3 == null)
			errors.add("Question 3 is required!");

		if (website == null || website.trim().length() == 0)
			errors.add("Question 4: Website name is required!");

		if (q5whatData == null || q5whatData.length == 0) {
			errors.add("Question 5 is required!");
		} else if (q5whatData.length < 5) {
			errors.add("For Question 5, You must select at least five options!");
		}

		if (q6 == null)
			errors.add("Question 6 is required!");

		if (q7 == null) {
			errors.add("Question 7 is required!");
		} else if (q7.equals("yes") ) {
			if (q7_1 == null)
				errors.add("Question 7.1 is required!");
		}

		if (q8 == null) {
			errors.add("Question 8 is required!");
		} else if (q8.equals("yes")) {
			if (q8_1 == null) {
				errors.add("Question 8.1 is required!");
			} else if(q8_1.equals("yes")) {
				if(q8_1_1 == null) {
					errors.add("Question 8.1.1 is required!");
				}
			}
		}

		if (q9 == null) {
			errors.add("Question 9 is required!");
		} else if (q9.equals("yes")) {
			System.out.println("+++++what happened in q9" );
			if (q9_1 == null) {
				errors.add("Question 9.1 is required!");
			} else if (q9_1.equals("yes")) {
				if (q9_1_1 == null)
					errors.add("Question 9.1.1 is required!");

				if (q9_2_1 == null) {
					errors.add("Question 9.2.1 is required!");
				} else if (q9_2_1.equals("yes")) {
					if (q9_2_1_1 == null || q9_2_1_1.trim().length() == 0)
						errors.add("Question 9.2.1, you must list the financial institution of your institution's affiliates!");
				}

				if (q9_2_2 == null) {
					errors.add("Question 9.2.2 is required!");
				} else if (q9_2_2.equals("yes")) {
					if (q9_2_2_1 == null || q9_2_2_1.trim().length() == 0)
						errors.add("Question 9.2.2, you must List other companies of your institution's affiliates!");
				}

				if (q9_3 == null) {
					errors.add("Question 9.3 is required!");
				} else if (q9_3.equals("yes")) {
					if (q9_4 == null) {
						errors.add("Question 9.4 is required!");
					} else if (q9_4.equals("no")) {
						if (q9_5 == null) {
							errors.add("Question 9.5 is required!");
						}
					}
				}
			}

			if (q9_2 == null) {
				errors.add("Question 9.2 is required!");
			} else if (q9_2.equals("yes")) {
				if (q9_2_1 == null) {
					errors.add("Question 9.2.1 is required!");
				} else if (q9_2_1.equals("yes")) {
					if (q9_2_1_1 == null || q9_2_1_1.trim().length() == 0) {
						errors.add("Question 9.2.1, you must list the financial institution of your institution's affiliates!");					
					}
				}

				if (q9_2_2 == null) {
					errors.add("Question 9.1.2 is required!");
				} else if (q9_2_2.equals("yes")) {
					if (q9_2_2_1 == null || q9_2_2_1.trim().length() == 0)
						errors.add("Question 9.2.2, you must List other companies of your institution's affiliates!");
				}

				if (q9_3 == null) {
					errors.add("Question 9.3 is required!");
				} else if (q9_3.equals("yes")) {
					if (q9_4 == null) {
						errors.add("Question 9.4 is required!");
					} else if (q9_4.equals("no")) {
						if (q9_5 == null) {
							errors.add("Question 9.5 is required!");
						}
					}
				}
			}
		}

		if (q10 == null)
			errors.add("Question 10 is required!");

		if (q11 == null || q11.length() == 0)
			errors.add("Question 11 is required!");

		for (int i = 0; i < q11.length(); i++) {
			if (q11.charAt(i) > '9' || q11.charAt(i) < '0') {
				errors.add("Question 11: Invalid Number input!");
				break;
			}
		}

		if (q11 != null && q11.length() != 0) {
			int res = Integer.parseInt(q11);
			if (res < 30)
				errors.add("Question 11: Input number must equal to bigger than 30!");
		}

		if (q12 == null) {
			errors.add("Question 12 is required!");
		} else if (q12.equals("no")) {
			if (q12_1 == null || q12_1.trim().length() == 0)
				errors.add("Question 12.1 is required!");
		}

		if (q13 == null) {
			errors.add("Question 13 is required!");
		} else if (q13.equals("yes")) {
			if (q13_1 == null || q13_1.trim().length() == 0)
				errors.add("Additional information for Question 13 is required!");

			String[] res = q13.split(" ");
			if (res.length > 30)
				errors.add("You are limited to a maximum of 30 additional words.");
		}

		if (q14whatWay == null) {
			errors.add("Question 14 is required!");
		} else {
			if (q14whatWay.length < 5) {
				errors.add("For Question 14, You must select at least five options!");
			}
		}

		if (q15 == null) {
			errors.add("Question 15 is required!");
		} else if (q15.equals("no")) {
			if (q15_1 == null)
				errors.add("Question 15.1 is required!");
		}

		if (q16 == null) {
			errors.add("Question 16 is required!");
		} else if (q16.equals("yes")) {
			if (q16_1 == null || q16_1.trim().length() == 0)
				errors.add("Question 16.1 is required!");
		}

		if (q17 == null) {
			errors.add("Question 17 is required!");
		} else if (q17.equals("yes")) {
			if (q17_1 == null || q17_1.length() == 0)
				errors.add("Question 17.1 is required!");
			
			if (q17_2 == null || q17_2.length() == 0)
				errors.add("Question 17.2 is required!");
			
			if (q17_3 == null || q17_3.length() == 0)
				errors.add("Question 17.3 is required!");
			
			if (q17_1 != null && q17_2 != null && q17_3 != null && q17_1.equals("no") && q17_2.equals("no") && q17_3.equals("no"))
				errors.add("At least one answer of question 17.1, 17.2, and 17.3 must be YES.");
			
			if (q17_3 != null && q17_3.equals("yes")) {
				if (q17_3_1 == null || q17_3_1.length() == 0)
					errors.add("Question 17.3.1 is required!");
				if (q17_3_2 == null || q17_3_2.length() == 0)
					errors.add("Question 17.3.2 is required!");
				if (address1 == null || address1.trim().length() == 0);
					errors.add("Question 17.3.3 Stree Address 1 is required!");
				if (city == null || city.trim().length() == 0);
					errors.add("Question 17.3.3 City is required!");
				if (state == null || state.trim().length() == 0);
					errors.add("Question 17.3.3 State is required!");
				if (zipcode == null || zipcode.trim().length() != 5);
					errors.add("Question 17.3.3: please provide a valid zipcode!");
			}
		}

		if (action == null || action.length() == 0) {
			errors.add("Action is required.");
		}

		if (errors.size() > 0)
			return errors;

		if (action.equals("Save Application") || action.equals("read")|| action.equals("Complete")){
			System.out.print(action);
		} else{
			errors.add("Invalid button.");
		}
		
		Collections.sort(errors);
		for(int i = 1; i< errors.size(); i++) {
			if(errors.get(i).equals(errors.get(i-1))) {
				errors.remove(i);
			}
		}

		return errors;
	}
}
