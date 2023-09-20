(declare-fun d_ack!100 () (_ BitVec 64))
(declare-fun b_ack!99 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) d_ack!100) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!99)))

(check-sat)
(exit)
