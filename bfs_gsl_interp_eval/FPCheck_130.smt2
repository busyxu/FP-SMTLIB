(declare-fun x1_ack!1440 () (_ BitVec 64))
(declare-fun x0_ack!1443 () (_ BitVec 64))
(declare-fun x2_ack!1441 () (_ BitVec 64))
(declare-fun xx_ack!1442 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1443) ((_ to_fp 11 53) x1_ack!1440)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1440) ((_ to_fp 11 53) x2_ack!1441)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1440)
                       ((_ to_fp 11 53) x0_ack!1443))
               ((_ to_fp 11 53) x0_ack!1443))
       ((_ to_fp 11 53) x1_ack!1440)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1440)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1440)
                       ((_ to_fp 11 53) x0_ack!1443)))
       ((_ to_fp 11 53) x0_ack!1443)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1441)
                       ((_ to_fp 11 53) x1_ack!1440))
               ((_ to_fp 11 53) x1_ack!1440))
       ((_ to_fp 11 53) x2_ack!1441)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1441)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1441)
                       ((_ to_fp 11 53) x1_ack!1440)))
       ((_ to_fp 11 53) x1_ack!1440)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1440)
                    ((_ to_fp 11 53) x0_ack!1443))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1441)
                    ((_ to_fp 11 53) x1_ack!1440))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1442) ((_ to_fp 11 53) x0_ack!1443))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1442) ((_ to_fp 11 53) x2_ack!1441))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1442) ((_ to_fp 11 53) x0_ack!1443))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1442) ((_ to_fp 11 53) x1_ack!1440)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1440) ((_ to_fp 11 53) xx_ack!1442))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1441)
               ((_ to_fp 11 53) x1_ack!1440))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1441)
          ((_ to_fp 11 53) x1_ack!1440))))

(check-sat)
(exit)
