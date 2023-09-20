(declare-fun a_ack!74 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!74) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!74) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!74) ((_ to_fp 11 53) #x4024000000000000))))

(check-sat)
(exit)
