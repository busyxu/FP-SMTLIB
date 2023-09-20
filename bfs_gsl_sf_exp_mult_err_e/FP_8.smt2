(declare-fun c_ack!204 () (_ BitVec 64))
(declare-fun a_ack!205 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!205) ((_ to_fp 11 53) #xc076232bdd7abcd2))))

(check-sat)
(exit)
