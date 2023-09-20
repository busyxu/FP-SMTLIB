(declare-fun x1_ack!1093 () (_ BitVec 64))
(declare-fun x0_ack!1096 () (_ BitVec 64))
(declare-fun x2_ack!1094 () (_ BitVec 64))
(declare-fun xx_ack!1095 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1096) ((_ to_fp 11 53) x1_ack!1093)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1093) ((_ to_fp 11 53) x2_ack!1094)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1093)
                       ((_ to_fp 11 53) x0_ack!1096))
               ((_ to_fp 11 53) x0_ack!1096))
       ((_ to_fp 11 53) x1_ack!1093)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1093)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1093)
                       ((_ to_fp 11 53) x0_ack!1096)))
       ((_ to_fp 11 53) x0_ack!1096)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1094)
                       ((_ to_fp 11 53) x1_ack!1093))
               ((_ to_fp 11 53) x1_ack!1093))
       ((_ to_fp 11 53) x2_ack!1094)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1094)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1094)
                       ((_ to_fp 11 53) x1_ack!1093)))
       ((_ to_fp 11 53) x1_ack!1093)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1093)
                    ((_ to_fp 11 53) x0_ack!1096))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1094)
                    ((_ to_fp 11 53) x1_ack!1093))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1095) ((_ to_fp 11 53) x0_ack!1096))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1095) ((_ to_fp 11 53) x2_ack!1094))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1095) ((_ to_fp 11 53) x0_ack!1096))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1095) ((_ to_fp 11 53) x1_ack!1093)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1093) ((_ to_fp 11 53) xx_ack!1095))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1094)
               ((_ to_fp 11 53) x1_ack!1093))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY xx_ack!1095 x1_ack!1093))

(check-sat)
(exit)
