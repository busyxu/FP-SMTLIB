(declare-fun a_ack!77 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!76 () (_ BitVec 64))
(assert (not (bvslt a_ack!77 #x00000000)))
(assert (not (= #x00000000 a_ack!77)))
(assert (not (= #x00000001 a_ack!77)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) b_ack!76))
  #x3fe8093870155910))

(check-sat)
(exit)
