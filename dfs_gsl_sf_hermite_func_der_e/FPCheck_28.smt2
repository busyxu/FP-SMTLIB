(declare-fun a_ack!191 () (_ BitVec 32))
(declare-fun b_ack!189 () (_ BitVec 32))
(declare-fun c_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!191 #x00000000)))
(assert (not (bvslt b_ack!189 #x00000000)))
(assert (= #x00000000 a_ack!191))
(assert (not (bvslt b_ack!189 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!189)))
(assert (not (= #x00000001 b_ack!189)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
          ((_ to_fp 11 53) c_ack!190))
  #x3fe8093870155910))

(check-sat)
(exit)
