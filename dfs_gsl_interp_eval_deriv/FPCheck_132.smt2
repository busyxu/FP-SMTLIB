(declare-fun x1_ack!1471 () (_ BitVec 64))
(declare-fun x0_ack!1474 () (_ BitVec 64))
(declare-fun x2_ack!1472 () (_ BitVec 64))
(declare-fun xx_ack!1473 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1474) ((_ to_fp 11 53) x1_ack!1471)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1471) ((_ to_fp 11 53) x2_ack!1472)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1471)
                       ((_ to_fp 11 53) x0_ack!1474))
               ((_ to_fp 11 53) x0_ack!1474))
       ((_ to_fp 11 53) x1_ack!1471)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1471)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1471)
                       ((_ to_fp 11 53) x0_ack!1474)))
       ((_ to_fp 11 53) x0_ack!1474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1472)
                       ((_ to_fp 11 53) x1_ack!1471))
               ((_ to_fp 11 53) x1_ack!1471))
       ((_ to_fp 11 53) x2_ack!1472)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1472)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1472)
                       ((_ to_fp 11 53) x1_ack!1471)))
       ((_ to_fp 11 53) x1_ack!1471)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1471)
                    ((_ to_fp 11 53) x0_ack!1474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1472)
                    ((_ to_fp 11 53) x1_ack!1471))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1473) ((_ to_fp 11 53) x0_ack!1474))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1473) ((_ to_fp 11 53) x2_ack!1472))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1473) ((_ to_fp 11 53) x0_ack!1474))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1473) ((_ to_fp 11 53) x1_ack!1471))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1471)
               ((_ to_fp 11 53) x0_ack!1474))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1471)
          ((_ to_fp 11 53) x0_ack!1474))))

(check-sat)
(exit)
