(declare-fun limit_ack!5823 () (_ BitVec 64))
(declare-fun epsabs_ack!5828 () (_ BitVec 64))
(declare-fun a_ack!5829 () (_ BitVec 64))
(declare-fun x1_ack!5824 () (_ BitVec 64))
(declare-fun x2_ack!5825 () (_ BitVec 64))
(declare-fun x3_ack!5826 () (_ BitVec 64))
(declare-fun b_ack!5827 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5823)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5828)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5824) ((_ to_fp 11 53) a_ack!5829))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5825) ((_ to_fp 11 53) x1_ack!5824))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5826) ((_ to_fp 11 53) x2_ack!5825))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5827) ((_ to_fp 11 53) x3_ack!5826))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5829)
                                   ((_ to_fp 11 53) x1_ack!5824))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5824)
                                   ((_ to_fp 11 53) a_ack!5829)))
                   ((_ to_fp 11 53) #x3fe8fc7574fa6c62))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5829)
                                   ((_ to_fp 11 53) x1_ack!5824)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
