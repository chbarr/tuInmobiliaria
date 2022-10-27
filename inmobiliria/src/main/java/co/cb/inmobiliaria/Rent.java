package co.cb.inmobiliaria;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@RequiredArgsConstructor
public class Rent {
	private final String date;
	private final String address;

}
