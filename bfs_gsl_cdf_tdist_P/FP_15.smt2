(declare-fun mu_ack!631 () (_ BitVec 64))
(declare-fun x_ack!632 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!631) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!632)
                    ((_ to_fp 11 53) x_ack!632))
            ((_ to_fp 11 53) mu_ack!631))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!631)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!632)
                               ((_ to_fp 11 53) x_ack!632))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!632) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
