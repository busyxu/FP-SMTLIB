(declare-fun c_ack!642 () (_ BitVec 64))
(declare-fun a_ack!643 () (_ BitVec 32))
(declare-fun b_ack!641 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!642) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!643 #xffffffff)))
(assert (not (= #xffffffff a_ack!643)))
(assert (= #x00000000 a_ack!643))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!642) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!642) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!641) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!642) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!641) ((_ to_fp 11 53) #x408f400000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!642)
          ((_ to_fp 11 53) c_ack!642))))

(check-sat)
(exit)
