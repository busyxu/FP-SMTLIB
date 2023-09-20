(declare-fun b_ack!205 () (_ BitVec 64))
(declare-fun a_ack!206 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!205)
                          ((_ to_fp 11 53) b_ack!205))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!206)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!206)
                                   ((_ to_fp 11 53) a_ack!206))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!205)
                                   ((_ to_fp 11 53) b_ack!205))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))
(assert (FPCHECK_FDIV_OVERFLOW b_ack!205 a_ack!206))

(check-sat)
(exit)
