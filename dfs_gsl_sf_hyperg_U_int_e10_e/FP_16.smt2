(declare-fun c_ack!189 () (_ BitVec 64))
(declare-fun b_ack!188 () (_ BitVec 32))
(assert (fp.eq ((_ to_fp 11 53) c_ack!189) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000001 b_ack!188))

(check-sat)
(exit)
