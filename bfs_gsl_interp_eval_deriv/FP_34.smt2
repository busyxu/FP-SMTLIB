(declare-fun x1_ack!1069 () (_ BitVec 64))
(declare-fun x0_ack!1072 () (_ BitVec 64))
(declare-fun x2_ack!1070 () (_ BitVec 64))
(declare-fun xx_ack!1071 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1072) ((_ to_fp 11 53) x1_ack!1069)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1069) ((_ to_fp 11 53) x2_ack!1070)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1069)
                       ((_ to_fp 11 53) x0_ack!1072))
               ((_ to_fp 11 53) x0_ack!1072))
       ((_ to_fp 11 53) x1_ack!1069)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1069)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1069)
                       ((_ to_fp 11 53) x0_ack!1072)))
       ((_ to_fp 11 53) x0_ack!1072)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1070)
                       ((_ to_fp 11 53) x1_ack!1069))
               ((_ to_fp 11 53) x1_ack!1069))
       ((_ to_fp 11 53) x2_ack!1070)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1070)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1070)
                       ((_ to_fp 11 53) x1_ack!1069)))
       ((_ to_fp 11 53) x1_ack!1069)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1069)
                    ((_ to_fp 11 53) x0_ack!1072))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1070)
                    ((_ to_fp 11 53) x1_ack!1069))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1071) ((_ to_fp 11 53) x0_ack!1072))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1071) ((_ to_fp 11 53) x2_ack!1070))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1071) ((_ to_fp 11 53) x0_ack!1072))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1071) ((_ to_fp 11 53) x1_ack!1069)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!1069) ((_ to_fp 11 53) xx_ack!1071)))

(check-sat)
(exit)
