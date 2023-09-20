(declare-fun a_ack!185 () (_ BitVec 32))
(declare-fun b_ack!183 () (_ BitVec 32))
(declare-fun c_ack!184 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!185 #x00000000)))
(assert (not (bvslt b_ack!183 #x00000000)))
(assert (= #x00000000 a_ack!185))
(assert (not (bvslt b_ack!183 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!184) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!183)))
(assert (not (= #x00000001 b_ack!183)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) c_ack!184))
  #x3fe8093870155910))

(check-sat)
(exit)
