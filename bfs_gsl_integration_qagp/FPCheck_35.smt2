(declare-fun limit_ack!601 () (_ BitVec 64))
(declare-fun epsabs_ack!606 () (_ BitVec 64))
(declare-fun a_ack!607 () (_ BitVec 64))
(declare-fun x1_ack!602 () (_ BitVec 64))
(declare-fun x2_ack!603 () (_ BitVec 64))
(declare-fun x3_ack!604 () (_ BitVec 64))
(declare-fun b_ack!605 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!601)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!606)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!602) ((_ to_fp 11 53) a_ack!607))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!603) ((_ to_fp 11 53) x1_ack!602))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!604) ((_ to_fp 11 53) x2_ack!603))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!605) ((_ to_fp 11 53) x3_ack!604))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!607)
                                   ((_ to_fp 11 53) x1_ack!602))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!607)
                                   ((_ to_fp 11 53) x1_ack!602))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fc321082b7cd10f)))

(check-sat)
(exit)
