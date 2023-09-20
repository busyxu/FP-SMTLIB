(declare-fun b_ack!177 () (_ BitVec 64))
(declare-fun a_ack!178 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!177)
                          ((_ to_fp 11 53) b_ack!177))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!178)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!178)
                                   ((_ to_fp 11 53) a_ack!178))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!177)
                                   ((_ to_fp 11 53) b_ack!177))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!178)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FSUB_UNDERFLOW a_ack!178 a!1)))

(check-sat)
(exit)
