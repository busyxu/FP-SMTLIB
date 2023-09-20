(declare-fun c_ack!205 () (_ BitVec 64))
(declare-fun b_ack!204 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!205) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000001 b_ack!204))

(check-sat)
(exit)
