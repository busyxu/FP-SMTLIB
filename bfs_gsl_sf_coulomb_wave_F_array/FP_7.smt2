(declare-fun d_ack!120 () (_ BitVec 64))
(declare-fun b_ack!119 () (_ BitVec 32))
(declare-fun a_ack!121 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) d_ack!120) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!119))
(assert (not (bvsle #x00000001 b_ack!119)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
