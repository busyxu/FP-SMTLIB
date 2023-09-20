(declare-fun b_ack!481 () (_ BitVec 64))
(declare-fun a_ack!482 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!482)
                                   ((_ to_fp 11 53) a_ack!482))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!481)
                                   ((_ to_fp 11 53) b_ack!481)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!482)
                                  ((_ to_fp 11 53) a_ack!482))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!481)
                                  ((_ to_fp 11 53) b_ack!481)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!482)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!482)
                                   ((_ to_fp 11 53) a_ack!482))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!481)
                                   ((_ to_fp 11 53) b_ack!481))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!482)
                           ((_ to_fp 11 53) a_ack!482))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!481)
                           ((_ to_fp 11 53) b_ack!481)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!482)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!481))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!482)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
  (FPCHECK_FADD_OVERFLOW a!3 (fp.mul roundNearestTiesToEven a!4 a!4))))))

(check-sat)
(exit)
