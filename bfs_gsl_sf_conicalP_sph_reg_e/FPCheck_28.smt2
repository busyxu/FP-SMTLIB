(declare-fun c_ack!89 () (_ BitVec 64))
(declare-fun a_ack!90 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!89) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!90 #xffffffff)))
(assert (= #xffffffff a_ack!90))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!89) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!89) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 (fp.abs ((_ to_fp 11 53) c_ack!89))))

(check-sat)
(exit)
