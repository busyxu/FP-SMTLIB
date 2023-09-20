(declare-fun x_ack!16 () (_ BitVec 32))
(declare-fun mu_ack!15 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven x_ack!16)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (and (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               ((_ to_fp 11 53) roundNearestTiesToEven x_ack!16))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq ((_ to_fp 11 53) mu_ack!15)
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
