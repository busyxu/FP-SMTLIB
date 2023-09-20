(declare-fun a_ack!902 () (_ BitVec 32))
(declare-fun b_ack!901 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!902 #xffffffff)))
(assert (not (= #xffffffff a_ack!902)))
(assert (not (= #x00000000 a_ack!902)))
(assert (not (= #x00000001 a_ack!902)))
(assert (= #x00000002 a_ack!902))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!901) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!901) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          (CF_exp b_ack!901))
  #x3fe0000000000000))

(check-sat)
(exit)
