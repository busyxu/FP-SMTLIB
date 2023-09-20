(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun b_ack!32 () (_ BitVec 64))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!32))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!33))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!33)) ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
