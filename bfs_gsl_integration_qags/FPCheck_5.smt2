(declare-fun limit_ack!43 () (_ BitVec 64))
(declare-fun epsabs_ack!42 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!41 () (_ BitVec 64))
(declare-fun a_ack!44 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!43)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!42)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!44)
          ((_ to_fp 11 53) b_ack!41))))

(check-sat)
(exit)
