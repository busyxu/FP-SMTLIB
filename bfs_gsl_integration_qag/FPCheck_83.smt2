(declare-fun key_ack!913 () (_ BitVec 32))
(declare-fun limit_ack!912 () (_ BitVec 64))
(declare-fun epsabs_ack!910 () (_ BitVec 64))
(declare-fun epsrel_ack!911 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!909 () (_ BitVec 64))
(declare-fun a_ack!914 () (_ BitVec 64))
(assert (bvslt key_ack!913 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!912)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!910) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!911)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!911)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!914)
                  ((_ to_fp 11 53) b_ack!909)))))

(check-sat)
(exit)
