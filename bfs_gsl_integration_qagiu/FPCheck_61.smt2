(declare-fun limit_ack!370 () (_ BitVec 64))
(declare-fun epsabs_ack!368 () (_ BitVec 64))
(declare-fun epsrel_ack!369 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!371 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!370)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!368) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!369)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!369)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!371)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
