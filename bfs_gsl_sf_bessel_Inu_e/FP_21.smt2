(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun a_ack!286 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!285)
                          ((_ to_fp 11 53) b_ack!285))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!286)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!286)
                                   ((_ to_fp 11 53) a_ack!286))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!285)
                                   ((_ to_fp 11 53) b_ack!285))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))

(check-sat)
(exit)
