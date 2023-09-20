(declare-fun a_ack!355 () (_ BitVec 32))
(declare-fun b_ack!354 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!355 #x00000000)))
(assert (not (= #x00000000 a_ack!355)))
(assert (not (= #x00000001 a_ack!355)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!354))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!355))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!354))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!354)
          ((_ to_fp 11 53) b_ack!354))
  #x3ff0000000000000))

(check-sat)
(exit)
