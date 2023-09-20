(declare-fun x1_ack!2019 () (_ BitVec 64))
(declare-fun x0_ack!2023 () (_ BitVec 64))
(declare-fun y0_ack!2020 () (_ BitVec 64))
(declare-fun x_ack!2021 () (_ BitVec 64))
(declare-fun y_ack!2022 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2023) ((_ to_fp 11 53) x1_ack!2019))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2020) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2021) ((_ to_fp 11 53) x0_ack!2023))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2021) ((_ to_fp 11 53) x1_ack!2019)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2022) ((_ to_fp 11 53) y0_ack!2020))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2022) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2019)
                       ((_ to_fp 11 53) x0_ack!2023))
               ((_ to_fp 11 53) x0_ack!2023))
       ((_ to_fp 11 53) x1_ack!2019)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2019)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2019)
                       ((_ to_fp 11 53) x0_ack!2023)))
       ((_ to_fp 11 53) x0_ack!2023)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2022)
                       ((_ to_fp 11 53) y0_ack!2020))
               ((_ to_fp 11 53) y0_ack!2020))
       ((_ to_fp 11 53) y_ack!2022)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2022)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2022)
                       ((_ to_fp 11 53) y0_ack!2020)))
       ((_ to_fp 11 53) y0_ack!2020)))

(check-sat)
(exit)
