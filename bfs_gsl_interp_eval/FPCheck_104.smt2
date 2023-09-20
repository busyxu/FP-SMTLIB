(declare-fun x1_ack!1116 () (_ BitVec 64))
(declare-fun x0_ack!1119 () (_ BitVec 64))
(declare-fun x2_ack!1117 () (_ BitVec 64))
(declare-fun xx_ack!1118 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1119) ((_ to_fp 11 53) x1_ack!1116)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1116) ((_ to_fp 11 53) x2_ack!1117)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1116)
                       ((_ to_fp 11 53) x0_ack!1119))
               ((_ to_fp 11 53) x0_ack!1119))
       ((_ to_fp 11 53) x1_ack!1116)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1116)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1116)
                       ((_ to_fp 11 53) x0_ack!1119)))
       ((_ to_fp 11 53) x0_ack!1119)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1117)
                       ((_ to_fp 11 53) x1_ack!1116))
               ((_ to_fp 11 53) x1_ack!1116))
       ((_ to_fp 11 53) x2_ack!1117)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1117)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1117)
                       ((_ to_fp 11 53) x1_ack!1116)))
       ((_ to_fp 11 53) x1_ack!1116)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1116)
                    ((_ to_fp 11 53) x0_ack!1119))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1117)
                    ((_ to_fp 11 53) x1_ack!1116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1118) ((_ to_fp 11 53) x0_ack!1119))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1118) ((_ to_fp 11 53) x2_ack!1117))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1118) ((_ to_fp 11 53) x0_ack!1119))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1118) ((_ to_fp 11 53) x1_ack!1116)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1116) ((_ to_fp 11 53) xx_ack!1118))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1117)
               ((_ to_fp 11 53) x1_ack!1116))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW xx_ack!1118 x1_ack!1116))

(check-sat)
(exit)
