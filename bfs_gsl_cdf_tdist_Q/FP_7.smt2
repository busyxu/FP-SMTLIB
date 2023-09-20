(declare-fun mu_ack!127 () (_ BitVec 64))
(declare-fun x_ack!128 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!127) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!128)
                    ((_ to_fp 11 53) x_ack!128))
            ((_ to_fp 11 53) mu_ack!127))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!127)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!128)
                               ((_ to_fp 11 53) x_ack!128))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
