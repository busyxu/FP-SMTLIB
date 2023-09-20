(declare-fun limit_ack!102 () (_ BitVec 64))
(declare-fun epsabs_ack!107 () (_ BitVec 64))
(declare-fun a_ack!108 () (_ BitVec 64))
(declare-fun x1_ack!103 () (_ BitVec 64))
(declare-fun x2_ack!104 () (_ BitVec 64))
(declare-fun x3_ack!105 () (_ BitVec 64))
(declare-fun b_ack!106 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!102)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!107)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!103) ((_ to_fp 11 53) a_ack!108))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!104) ((_ to_fp 11 53) x1_ack!103))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!105) ((_ to_fp 11 53) x2_ack!104))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!106) ((_ to_fp 11 53) x3_ack!105))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!108)
          ((_ to_fp 11 53) x1_ack!103))))

(check-sat)
(exit)
