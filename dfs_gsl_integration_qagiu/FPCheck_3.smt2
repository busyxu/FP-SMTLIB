(declare-fun limit_ack!25 () (_ BitVec 64))
(declare-fun epsabs_ack!23 () (_ BitVec 64))
(declare-fun epsrel_ack!24 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!26 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!25)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!23) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!24)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!24)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!26)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
