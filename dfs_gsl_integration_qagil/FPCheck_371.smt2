(declare-fun limit_ack!2399 () (_ BitVec 64))
(declare-fun epsabs_ack!2397 () (_ BitVec 64))
(declare-fun epsrel_ack!2398 () (_ BitVec 64))
(declare-fun b_ack!2400 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2399)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2397) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2398)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2398)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2400)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!2400 #x3fe4fd542a5f1dca))

(check-sat)
(exit)
