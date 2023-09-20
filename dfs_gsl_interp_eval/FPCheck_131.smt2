(declare-fun x1_ack!1464 () (_ BitVec 64))
(declare-fun x0_ack!1467 () (_ BitVec 64))
(declare-fun x2_ack!1465 () (_ BitVec 64))
(declare-fun xx_ack!1466 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1467) ((_ to_fp 11 53) x1_ack!1464)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1464) ((_ to_fp 11 53) x2_ack!1465)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1464)
                       ((_ to_fp 11 53) x0_ack!1467))
               ((_ to_fp 11 53) x0_ack!1467))
       ((_ to_fp 11 53) x1_ack!1464)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1464)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1464)
                       ((_ to_fp 11 53) x0_ack!1467)))
       ((_ to_fp 11 53) x0_ack!1467)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1465)
                       ((_ to_fp 11 53) x1_ack!1464))
               ((_ to_fp 11 53) x1_ack!1464))
       ((_ to_fp 11 53) x2_ack!1465)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1465)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1465)
                       ((_ to_fp 11 53) x1_ack!1464)))
       ((_ to_fp 11 53) x1_ack!1464)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1464)
                    ((_ to_fp 11 53) x0_ack!1467))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1465)
                    ((_ to_fp 11 53) x1_ack!1464))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1466) ((_ to_fp 11 53) x0_ack!1467))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1466) ((_ to_fp 11 53) x2_ack!1465))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1466) ((_ to_fp 11 53) x0_ack!1467))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1466) ((_ to_fp 11 53) x1_ack!1464))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1464)
               ((_ to_fp 11 53) x0_ack!1467))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1464)
          ((_ to_fp 11 53) x0_ack!1467))))

(check-sat)
(exit)
