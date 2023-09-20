(declare-fun x1_ack!1209 () (_ BitVec 64))
(declare-fun x0_ack!1212 () (_ BitVec 64))
(declare-fun x2_ack!1210 () (_ BitVec 64))
(declare-fun xx_ack!1211 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1212) ((_ to_fp 11 53) x1_ack!1209)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1209) ((_ to_fp 11 53) x2_ack!1210)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1209)
                       ((_ to_fp 11 53) x0_ack!1212))
               ((_ to_fp 11 53) x0_ack!1212))
       ((_ to_fp 11 53) x1_ack!1209)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1209)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1209)
                       ((_ to_fp 11 53) x0_ack!1212)))
       ((_ to_fp 11 53) x0_ack!1212)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1210)
                       ((_ to_fp 11 53) x1_ack!1209))
               ((_ to_fp 11 53) x1_ack!1209))
       ((_ to_fp 11 53) x2_ack!1210)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1210)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1210)
                       ((_ to_fp 11 53) x1_ack!1209)))
       ((_ to_fp 11 53) x1_ack!1209)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1209)
                    ((_ to_fp 11 53) x0_ack!1212))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1210)
                    ((_ to_fp 11 53) x1_ack!1209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1211) ((_ to_fp 11 53) x0_ack!1212))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1211) ((_ to_fp 11 53) x2_ack!1210))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1211) ((_ to_fp 11 53) x0_ack!1212))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1211) ((_ to_fp 11 53) x1_ack!1209))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1209)
               ((_ to_fp 11 53) x0_ack!1212))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
