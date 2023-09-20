(declare-fun a_ack!109 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!108 () (_ BitVec 64))
(assert (not (bvslt a_ack!109 #x00000000)))
(assert (not (= #x00000000 a_ack!109)))
(assert (not (= #x00000001 a_ack!109)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) b_ack!108))
  #x3fe8093870155910))

(check-sat)
(exit)
