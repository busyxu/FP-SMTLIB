(declare-fun a_ack!426 () (_ BitVec 32))
(declare-fun b_ack!425 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!426 #x00000000)))
(assert (not (= #x00000000 a_ack!426)))
(assert (not (= #x00000001 a_ack!426)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!425) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!425))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!426))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!425))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!426))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!425)
                                   ((_ to_fp 11 53) b_ack!425))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!425))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (bvslt #x00000003 a_ack!426))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!425)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!425)
                                   ((_ to_fp 11 53) b_ack!425))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!425))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7fefffffffffffff))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!425)
                                   ((_ to_fp 11 53) b_ack!425))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fd3333333333333)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!425))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!425))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!425))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!425))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3cb0000000000000)))
                   a!2)))
  (FPCHECK_FMUL_UNDERFLOW (fp.abs ((_ to_fp 11 53) b_ack!425)) a!3))))

(check-sat)
(exit)
