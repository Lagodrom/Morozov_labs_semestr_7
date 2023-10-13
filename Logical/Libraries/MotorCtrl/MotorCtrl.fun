
{REDUND_ERROR} FUNCTION_BLOCK FB_Motor (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : REAL; (*Входное напряжение, В*)
	END_VAR
	VAR_OUTPUT
		phi : REAL; (*Положение, рад*)
		w : REAL; (*Частота напряжения, об/мин*)
	END_VAR
	VAR
		dt : REAL := 0.003; (*Шаг расчёта, с*)
		ke : REAL; (*Постоянная ЭДС двигателя, В*мин/об*)
		Tm : REAL := 0.03; (*Электромеханическая постоянная времени, с*)
		integrator : FB_Integrator; (*Интегратор*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Regulator (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : REAL; (*Рассогласование между задающим воздействием и реальной скоростью вращения вала ДПТ, об/мин*)
	END_VAR
	VAR_OUTPUT
		u : REAL; (*Напряжение, подаваемое на вход ДПТ, В*)
	END_VAR
	VAR
		a : REAL;
		b : REAL;
		last_sum : REAL;
		sum : REAL;
		k_p : REAL := 0.0064; (*Пропорциональный коэффициент регулятора*)
		k_i : REAL := 0.16; (*Интегральный коэффициент регулятора*)
		integrator : FB_Integrator; (*Интегратор*)
		iyOld : REAL; (*Хранение предыдущего значения схемы противонакопления*)
		limited_sum : REAL;
		max_abs_value : REAL := 24; (*Граница блока ограничения, В*)
		dt : REAL := 0.003; (*Шаг расчёта, с*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_Integrator (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL; (*Выход интегрирующего звена*)
	END_VAR
	VAR_OUTPUT
		out : REAL; (*Вход интегрирующего звена*)
	END_VAR
	VAR
		dt : REAL := 0.003; (*Шаг расчёта, с*)
		prev_value : REAL; (*Предыдущее состояние*)
	END_VAR
END_FUNCTION_BLOCK
