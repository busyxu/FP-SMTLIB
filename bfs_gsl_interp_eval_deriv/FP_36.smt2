(declare-fun x1_ack!1097 () (_ BitVec 64))
(declare-fun x0_ack!1100 () (_ BitVec 64))
(declare-fun x2_ack!1098 () (_ BitVec 64))
(declare-fun xx_ack!1099 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1100) ((_ to_fp 11 53) x1_ack!1097)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1097) ((_ to_fp 11 53) x2_ack!1098)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1097)
                       ((_ to_fp 11 53) x0_ack!1100))
               ((_ to_fp 11 53) x0_ack!1100))
       ((_ to_fp 11 53) x1_ack!1097)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1097)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1097)
                       ((_ to_fp 11 53) x0_ack!1100)))
       ((_ to_fp 11 53) x0_ack!1100)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1098)
                       ((_ to_fp 11 53) x1_ack!1097))
               ((_ to_fp 11 53) x1_ack!1097))
       ((_ to_fp 11 53) x2_ack!1098)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1098)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1098)
                       ((_ to_fp 11 53) x1_ack!1097)))
       ((_ to_fp 11 53) x1_ack!1097)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1097)
                    ((_ to_fp 11 53) x0_ack!1100))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1098)
                    ((_ to_fp 11 53) x1_ack!1097))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1099) ((_ to_fp 11 53) x0_ack!1100))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1099) ((_ to_fp 11 53) x2_ack!1098))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1099) ((_ to_fp 11 53) x0_ack!1100))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1099) ((_ to_fp 11 53) x1_ack!1097)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1097) ((_ to_fp 11 53) xx_ack!1099))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1098)
               ((_ to_fp 11 53) x1_ack!1097))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
