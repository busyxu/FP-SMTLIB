(declare-fun limit_ack!190 () (_ BitVec 64))
(declare-fun epsabs_ack!188 () (_ BitVec 64))
(declare-fun epsrel_ack!189 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!191 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!190)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!188) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!189)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!189)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!191)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
