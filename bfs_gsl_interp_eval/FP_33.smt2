(declare-fun x1_ack!1070 () (_ BitVec 64))
(declare-fun x0_ack!1073 () (_ BitVec 64))
(declare-fun x2_ack!1071 () (_ BitVec 64))
(declare-fun xx_ack!1072 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1073) ((_ to_fp 11 53) x1_ack!1070)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1070) ((_ to_fp 11 53) x2_ack!1071)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1070)
                       ((_ to_fp 11 53) x0_ack!1073))
               ((_ to_fp 11 53) x0_ack!1073))
       ((_ to_fp 11 53) x1_ack!1070)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1070)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1070)
                       ((_ to_fp 11 53) x0_ack!1073)))
       ((_ to_fp 11 53) x0_ack!1073)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1071)
                       ((_ to_fp 11 53) x1_ack!1070))
               ((_ to_fp 11 53) x1_ack!1070))
       ((_ to_fp 11 53) x2_ack!1071)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1071)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1071)
                       ((_ to_fp 11 53) x1_ack!1070)))
       ((_ to_fp 11 53) x1_ack!1070)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1070)
                    ((_ to_fp 11 53) x0_ack!1073))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1071)
                    ((_ to_fp 11 53) x1_ack!1070))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1072) ((_ to_fp 11 53) x0_ack!1073))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1072) ((_ to_fp 11 53) x2_ack!1071))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1072) ((_ to_fp 11 53) x0_ack!1073))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1072) ((_ to_fp 11 53) x1_ack!1070))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1070)
                    ((_ to_fp 11 53) x0_ack!1073))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
