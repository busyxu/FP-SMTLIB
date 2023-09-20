(declare-fun limit_ack!182 () (_ BitVec 64))
(declare-fun epsabs_ack!180 () (_ BitVec 64))
(declare-fun epsrel_ack!181 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!183 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!182)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!180) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!181)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!181)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!183)
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
