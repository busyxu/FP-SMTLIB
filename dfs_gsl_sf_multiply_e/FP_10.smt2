(declare-fun a_ack!52 () (_ BitVec 64))
(declare-fun b_ack!51 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!52))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!51))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!51))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!52))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!52))
            (fp.abs ((_ to_fp 11 53) b_ack!51)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!52))
            (fp.abs ((_ to_fp 11 53) b_ack!51)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!51))
            ((_ to_fp 11 53) #x5feccccccccccccc))))

(check-sat)
(exit)
