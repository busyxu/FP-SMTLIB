(declare-fun b_ack!107 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!107)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!107)))
        ((_ to_fp 11 53) #x4008000000000000)))

(check-sat)
(exit)
