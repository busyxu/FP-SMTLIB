(declare-fun limit_ack!6747 () (_ BitVec 64))
(declare-fun epsabs_ack!6752 () (_ BitVec 64))
(declare-fun a_ack!6753 () (_ BitVec 64))
(declare-fun x1_ack!6748 () (_ BitVec 64))
(declare-fun x2_ack!6749 () (_ BitVec 64))
(declare-fun x3_ack!6750 () (_ BitVec 64))
(declare-fun b_ack!6751 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6747)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6752)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6748) ((_ to_fp 11 53) a_ack!6753))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6749) ((_ to_fp 11 53) x1_ack!6748))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6750) ((_ to_fp 11 53) x2_ack!6749))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6751) ((_ to_fp 11 53) x3_ack!6750))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6753)
                                   ((_ to_fp 11 53) x1_ack!6748))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6753)
                           ((_ to_fp 11 53) x1_ack!6748))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6748)
                                   ((_ to_fp 11 53) a_ack!6753)))
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
  (FPCHECK_FMUL_UNDERFLOW
    #x3fbf9d2b8f5d2dde
    (fp.add roundNearestTiesToEven (fp.abs a!3) (fp.abs a!4))))))

(check-sat)
(exit)
