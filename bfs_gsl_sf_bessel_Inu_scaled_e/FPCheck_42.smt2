(declare-fun b_ack!139 () (_ BitVec 64))
(declare-fun a_ack!140 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!140) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!139)
                          ((_ to_fp 11 53) b_ack!139))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!140)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!140)
                                   ((_ to_fp 11 53) a_ack!140))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!139)
                                   ((_ to_fp 11 53) b_ack!139))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41)))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!139) ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW #x3ff0000000000000 b_ack!139))

(check-sat)
(exit)
