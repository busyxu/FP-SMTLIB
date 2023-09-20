(declare-fun a_ack!390 () (_ BitVec 32))
(declare-fun b_ack!389 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!390 #x00000000)))
(assert (not (= #x00000000 a_ack!390)))
(assert (not (= #x00000001 a_ack!390)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!389))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 a_ack!390))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!389))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!389))))))
  (not a!1)))
(assert (bvslt #x00000002 a_ack!390))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.gt a!1
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x7feccccccccccccc)
                          (fp.abs ((_ to_fp 11 53) b_ack!389))))))
  (not a!2))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!389))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!389)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!389)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) b_ack!389)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!389)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!389)
                                   ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!389))))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 ((_ to_fp 11 53) b_ack!389))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!389))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3cb0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!389))
                           ((_ to_fp 11 53) #x3cb0000000000000)))))
  (FPCHECK_FADD_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) b_ack!389))
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3cb0000000000000)))
    a!2)))

(check-sat)
(exit)
