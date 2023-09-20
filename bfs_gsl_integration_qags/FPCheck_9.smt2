(declare-fun limit_ack!75 () (_ BitVec 64))
(declare-fun epsabs_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!76 () (_ BitVec 64))
(declare-fun b_ack!73 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!75)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!74)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!73)
          ((_ to_fp 11 53) a_ack!76))))

(check-sat)
(exit)
