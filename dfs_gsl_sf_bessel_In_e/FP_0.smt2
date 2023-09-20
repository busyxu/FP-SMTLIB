(declare-fun b_ack!8 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!8)))
                  ((_ to_fp 11 53) #x3e60000000000000))))
  (not a!1)))

(check-sat)
(exit)
