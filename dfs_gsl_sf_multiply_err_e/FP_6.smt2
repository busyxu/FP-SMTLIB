(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun c_ack!64 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!65) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!65))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) c_ack!64))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!64))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
