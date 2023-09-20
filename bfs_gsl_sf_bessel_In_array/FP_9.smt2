(declare-fun c_ack!57 () (_ BitVec 64))
(declare-fun a_ack!58 () (_ BitVec 32))
(declare-fun b_ack!56 () (_ BitVec 32))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!57)) ((_ to_fp 11 53) #x40862642fefa39ef)))
(assert (not (bvsle #x00000000 (bvsub b_ack!56 a_ack!58))))

(check-sat)
(exit)
