(declare-fun limit_ack!674 () (_ BitVec 64))
(declare-fun epsabs_ack!679 () (_ BitVec 64))
(declare-fun epsrel_ack!673 () (_ BitVec 64))
(declare-fun a_ack!680 () (_ BitVec 64))
(declare-fun x1_ack!675 () (_ BitVec 64))
(declare-fun x2_ack!676 () (_ BitVec 64))
(declare-fun x3_ack!677 () (_ BitVec 64))
(declare-fun b_ack!678 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!674)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!679) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!673)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!673)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!675) ((_ to_fp 11 53) a_ack!680))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!676) ((_ to_fp 11 53) x1_ack!675))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!677) ((_ to_fp 11 53) x2_ack!676))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) x3_ack!677))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!680)
                                   ((_ to_fp 11 53) x1_ack!675))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!675)
                                   ((_ to_fp 11 53) a_ack!680)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!680)
                                   ((_ to_fp 11 53) x1_ack!675)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
