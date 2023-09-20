(declare-fun a_ack!227 () (_ BitVec 64))
(declare-fun c_ack!226 () (_ BitVec 64))
(declare-fun b_ack!225 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!227) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!225)
                           ((_ to_fp 11 53) b_ack!225))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!227))
                           ((_ to_fp 11 53) c_ack!226)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!225) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
