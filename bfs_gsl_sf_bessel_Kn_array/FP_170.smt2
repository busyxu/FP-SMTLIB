(declare-fun a_ack!4591 () (_ BitVec 32))
(declare-fun b_ack!4589 () (_ BitVec 32))
(declare-fun c_ack!4590 () (_ BitVec 64))
(assert (not (bvslt a_ack!4591 #x00000000)))
(assert (not (bvslt b_ack!4589 a_ack!4591)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4590) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4589))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4590) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4590) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4590) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (bvsle #x00000000 (bvsub b_ack!4589 a_ack!4591))))

(check-sat)
(exit)
