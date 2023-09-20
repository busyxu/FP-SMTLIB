(declare-fun limit_ack!6733 () (_ BitVec 64))
(declare-fun epsabs_ack!6738 () (_ BitVec 64))
(declare-fun a_ack!6739 () (_ BitVec 64))
(declare-fun x1_ack!6734 () (_ BitVec 64))
(declare-fun x2_ack!6735 () (_ BitVec 64))
(declare-fun x3_ack!6736 () (_ BitVec 64))
(declare-fun b_ack!6737 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6733)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6738)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6734) ((_ to_fp 11 53) a_ack!6739))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6735) ((_ to_fp 11 53) x1_ack!6734))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6736) ((_ to_fp 11 53) x2_ack!6735))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6737) ((_ to_fp 11 53) x3_ack!6736))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6739)
                                   ((_ to_fp 11 53) x1_ack!6734))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6739)
                           ((_ to_fp 11 53) x1_ack!6734))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6734)
                                   ((_ to_fp 11 53) a_ack!6739)))
                   ((_ to_fp 11 53) #x3fe2021b401fc120))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fbf9d2b8f5d2dde
    (fp.add roundNearestTiesToEven (fp.abs a!3) (fp.abs a!4))))))

(check-sat)
(exit)
