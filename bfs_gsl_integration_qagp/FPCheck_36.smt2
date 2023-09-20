(declare-fun limit_ack!615 () (_ BitVec 64))
(declare-fun epsabs_ack!620 () (_ BitVec 64))
(declare-fun a_ack!621 () (_ BitVec 64))
(declare-fun x1_ack!616 () (_ BitVec 64))
(declare-fun x2_ack!617 () (_ BitVec 64))
(declare-fun x3_ack!618 () (_ BitVec 64))
(declare-fun b_ack!619 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!615)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!620)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!616) ((_ to_fp 11 53) a_ack!621))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!617) ((_ to_fp 11 53) x1_ack!616))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!618) ((_ to_fp 11 53) x2_ack!617))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!619) ((_ to_fp 11 53) x3_ack!618))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!621)
                                   ((_ to_fp 11 53) x1_ack!616))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!621)
                                   ((_ to_fp 11 53) x1_ack!616))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fc321082b7cd10f)))

(check-sat)
(exit)
