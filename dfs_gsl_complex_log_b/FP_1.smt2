(declare-fun y1_ack!32 () (_ BitVec 64))
(declare-fun x1_ack!33 () (_ BitVec 64))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!33))
        (fp.abs ((_ to_fp 11 53) y1_ack!32))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!32))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!33))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
