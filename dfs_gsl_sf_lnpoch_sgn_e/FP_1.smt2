(declare-fun b_ack!11 () (_ BitVec 64))
(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!12) (CF_floor a_ack!12))))

(check-sat)
(exit)
