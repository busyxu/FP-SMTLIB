(declare-fun c_ack!187 () (_ BitVec 64))
(declare-fun b_ack!186 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!187) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000001 b_ack!186)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!187) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
