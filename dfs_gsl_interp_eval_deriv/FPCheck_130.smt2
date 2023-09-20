(declare-fun x1_ack!1459 () (_ BitVec 64))
(declare-fun x0_ack!1462 () (_ BitVec 64))
(declare-fun x2_ack!1460 () (_ BitVec 64))
(declare-fun xx_ack!1461 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1462) ((_ to_fp 11 53) x1_ack!1459)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1459) ((_ to_fp 11 53) x2_ack!1460)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1459)
                       ((_ to_fp 11 53) x0_ack!1462))
               ((_ to_fp 11 53) x0_ack!1462))
       ((_ to_fp 11 53) x1_ack!1459)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1459)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1459)
                       ((_ to_fp 11 53) x0_ack!1462)))
       ((_ to_fp 11 53) x0_ack!1462)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1460)
                       ((_ to_fp 11 53) x1_ack!1459))
               ((_ to_fp 11 53) x1_ack!1459))
       ((_ to_fp 11 53) x2_ack!1460)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1460)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1460)
                       ((_ to_fp 11 53) x1_ack!1459)))
       ((_ to_fp 11 53) x1_ack!1459)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1459)
                    ((_ to_fp 11 53) x0_ack!1462))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1460)
                    ((_ to_fp 11 53) x1_ack!1459))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1461) ((_ to_fp 11 53) x0_ack!1462))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1461) ((_ to_fp 11 53) x2_ack!1460))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1461) ((_ to_fp 11 53) x0_ack!1462))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1461) ((_ to_fp 11 53) x1_ack!1459))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1459)
               ((_ to_fp 11 53) x0_ack!1462))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1459)
          ((_ to_fp 11 53) x0_ack!1462))))

(check-sat)
(exit)
