(declare-fun limit_ack!141 () (_ BitVec 64))
(declare-fun epsabs_ack!139 () (_ BitVec 64))
(declare-fun epsrel_ack!140 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!138 () (_ BitVec 64))
(declare-fun a_ack!142 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!141)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!139) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!140)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!140)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!142)
                  ((_ to_fp 11 53) b_ack!138)))))

(check-sat)
(exit)
