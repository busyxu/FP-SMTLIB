(declare-fun x1_ack!1467 () (_ BitVec 64))
(declare-fun x0_ack!1470 () (_ BitVec 64))
(declare-fun x2_ack!1468 () (_ BitVec 64))
(declare-fun xx_ack!1469 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1470) ((_ to_fp 11 53) x1_ack!1467)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1467) ((_ to_fp 11 53) x2_ack!1468)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1467)
                       ((_ to_fp 11 53) x0_ack!1470))
               ((_ to_fp 11 53) x0_ack!1470))
       ((_ to_fp 11 53) x1_ack!1467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1467)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1467)
                       ((_ to_fp 11 53) x0_ack!1470)))
       ((_ to_fp 11 53) x0_ack!1470)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1468)
                       ((_ to_fp 11 53) x1_ack!1467))
               ((_ to_fp 11 53) x1_ack!1467))
       ((_ to_fp 11 53) x2_ack!1468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1468)
                       ((_ to_fp 11 53) x1_ack!1467)))
       ((_ to_fp 11 53) x1_ack!1467)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1467)
                    ((_ to_fp 11 53) x0_ack!1470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1468)
                    ((_ to_fp 11 53) x1_ack!1467))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x0_ack!1470))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x2_ack!1468))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x0_ack!1470))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x1_ack!1467))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1467)
               ((_ to_fp 11 53) x0_ack!1470))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1467)
          ((_ to_fp 11 53) x0_ack!1470))))

(check-sat)
(exit)
