(declare-fun x_ack!23 () (_ BitVec 64))
(declare-fun mu_ack!22 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (and (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               ((_ to_fp 11 53) x_ack!23))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq ((_ to_fp 11 53) mu_ack!22)
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
