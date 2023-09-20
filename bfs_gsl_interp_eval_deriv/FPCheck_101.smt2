(declare-fun x1_ack!1077 () (_ BitVec 64))
(declare-fun x0_ack!1080 () (_ BitVec 64))
(declare-fun x2_ack!1078 () (_ BitVec 64))
(declare-fun xx_ack!1079 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1080) ((_ to_fp 11 53) x1_ack!1077)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1077) ((_ to_fp 11 53) x2_ack!1078)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1077)
                       ((_ to_fp 11 53) x0_ack!1080))
               ((_ to_fp 11 53) x0_ack!1080))
       ((_ to_fp 11 53) x1_ack!1077)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1077)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1077)
                       ((_ to_fp 11 53) x0_ack!1080)))
       ((_ to_fp 11 53) x0_ack!1080)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1078)
                       ((_ to_fp 11 53) x1_ack!1077))
               ((_ to_fp 11 53) x1_ack!1077))
       ((_ to_fp 11 53) x2_ack!1078)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1078)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1078)
                       ((_ to_fp 11 53) x1_ack!1077)))
       ((_ to_fp 11 53) x1_ack!1077)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1077)
                    ((_ to_fp 11 53) x0_ack!1080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1078)
                    ((_ to_fp 11 53) x1_ack!1077))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1079) ((_ to_fp 11 53) x0_ack!1080))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1079) ((_ to_fp 11 53) x2_ack!1078))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1079) ((_ to_fp 11 53) x0_ack!1080))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1079) ((_ to_fp 11 53) x1_ack!1077)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1077) ((_ to_fp 11 53) xx_ack!1079))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1078)
               ((_ to_fp 11 53) x1_ack!1077))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW xx_ack!1079 x1_ack!1077))

(check-sat)
(exit)
