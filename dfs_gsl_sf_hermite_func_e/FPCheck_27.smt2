(declare-fun a_ack!121 () (_ BitVec 32))
(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!121 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!121)))
(assert (not (= #x00000001 a_ack!121)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) b_ack!120))
  #x3fe8093870155910))

(check-sat)
(exit)
