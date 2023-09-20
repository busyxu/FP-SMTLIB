(declare-fun a_ack!171 () (_ BitVec 32))
(declare-fun b_ack!169 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!170 () (_ BitVec 64))
(assert (not (bvslt a_ack!171 #x00000000)))
(assert (not (bvslt b_ack!169 #x00000000)))
(assert (not (= #x00000000 a_ack!171)))
(assert (= #x00000001 a_ack!171))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) c_ack!170))
  #x3fe8093870155910))

(check-sat)
(exit)
