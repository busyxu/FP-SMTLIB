(declare-fun b_ack!385 () (_ BitVec 64))
(declare-fun a_ack!386 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!385) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!386)
                                   ((_ to_fp 11 53) a_ack!386))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!385)
                                   ((_ to_fp 11 53) b_ack!385)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!386)
                                  ((_ to_fp 11 53) a_ack!386))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!385)
                                  ((_ to_fp 11 53) b_ack!385)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))

(check-sat)
(exit)
