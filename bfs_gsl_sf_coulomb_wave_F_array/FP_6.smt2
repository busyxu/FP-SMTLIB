(declare-fun d_ack!118 () (_ BitVec 64))
(declare-fun b_ack!117 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) d_ack!118) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!117))
(assert (bvsle #x00000001 b_ack!117))

(check-sat)
(exit)
