(declare-fun limit_ack!386 () (_ BitVec 64))
(declare-fun epsabs_ack!391 () (_ BitVec 64))
(declare-fun epsrel_ack!385 () (_ BitVec 64))
(declare-fun a_ack!392 () (_ BitVec 64))
(declare-fun x1_ack!387 () (_ BitVec 64))
(declare-fun x2_ack!388 () (_ BitVec 64))
(declare-fun x3_ack!389 () (_ BitVec 64))
(declare-fun b_ack!390 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!386)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!391) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!385)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!385)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!387) ((_ to_fp 11 53) a_ack!392))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!388) ((_ to_fp 11 53) x1_ack!387))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!389) ((_ to_fp 11 53) x2_ack!388))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!390) ((_ to_fp 11 53) x3_ack!389))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!392)
                                   ((_ to_fp 11 53) x1_ack!387))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!392)
                                   ((_ to_fp 11 53) x1_ack!387))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            (CF_log a!1)
            ((_ to_fp 11 53) #x7ff8000000000001))
    #x3fc321082b7cd10f)))

(check-sat)
(exit)
