(declare-fun a_ack!635 () (_ BitVec 32))
(declare-fun b_ack!633 () (_ BitVec 32))
(declare-fun c_ack!634 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!633 a_ack!635)))
(assert (not (bvslt a_ack!635 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!634) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!633))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!634))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!634)))
  (fp.abs ((_ to_fp 11 53) c_ack!634))))

(check-sat)
(exit)
