(declare-fun c_ack!60 () (_ BitVec 64))
(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun b_ack!59 () (_ BitVec 32))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!60)) ((_ to_fp 11 53) #x40862642fefa39ef)))
(assert (bvsle #x00000000 (bvsub b_ack!59 a_ack!61)))
(assert (bvsle #x00000001 (bvsub b_ack!59 a_ack!61)))

(check-sat)
(exit)
