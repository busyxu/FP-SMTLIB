(declare-fun b_ack!633 () (_ BitVec 64))
(declare-fun a_ack!634 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!633) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!634)
                                   ((_ to_fp 11 53) a_ack!634))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!633)
                                   ((_ to_fp 11 53) b_ack!633)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.lt (fp.add roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!634)
                                  ((_ to_fp 11 53) a_ack!634))
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!633)
                                  ((_ to_fp 11 53) b_ack!633)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!634)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!634)
                                   ((_ to_fp 11 53) a_ack!634))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!633)
                                   ((_ to_fp 11 53) b_ack!633))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fe76c8b43958106)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!634)
                           ((_ to_fp 11 53) a_ack!634))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!633)
                           ((_ to_fp 11 53) b_ack!633)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!633))
                           a!1)
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!634)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!634)
                                   a!1)
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x7ff0000000000001)
                   (fp.sub roundNearestTiesToEven
                           a!2
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!4)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff8000000000001)
                    a!2)
            a!5)
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff8000000000001)
                    a!2)
            a!5)))))))

(check-sat)
(exit)
