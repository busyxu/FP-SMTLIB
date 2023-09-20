(declare-fun x1_ack!355 () (_ BitVec 64))
(declare-fun x0_ack!360 () (_ BitVec 64))
(declare-fun x2_ack!356 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!357 () (_ BitVec 64))
(declare-fun y1_ack!358 () (_ BitVec 64))
(declare-fun y2_ack!359 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!360) ((_ to_fp 11 53) x1_ack!355)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!355) ((_ to_fp 11 53) x2_ack!356)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!355)
                       ((_ to_fp 11 53) x0_ack!360))
               ((_ to_fp 11 53) x0_ack!360))
       ((_ to_fp 11 53) x1_ack!355)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!355)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!355)
                       ((_ to_fp 11 53) x0_ack!360)))
       ((_ to_fp 11 53) x0_ack!360)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!356)
                       ((_ to_fp 11 53) x1_ack!355))
               ((_ to_fp 11 53) x1_ack!355))
       ((_ to_fp 11 53) x2_ack!356)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!356)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!356)
                       ((_ to_fp 11 53) x1_ack!355)))
       ((_ to_fp 11 53) x1_ack!355)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!355)
                    ((_ to_fp 11 53) x0_ack!360))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!356)
                    ((_ to_fp 11 53) x1_ack!355))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!359)
                           ((_ to_fp 11 53) y1_ack!358))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!356)
                                   ((_ to_fp 11 53) x1_ack!355)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!358)
                           ((_ to_fp 11 53) y0_ack!357))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!355)
                                   ((_ to_fp 11 53) x0_ack!360)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!356)
                                   ((_ to_fp 11 53) x1_ack!355))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!355)
                                   ((_ to_fp 11 53) x0_ack!360))))))
  (FPCHECK_FDIV_ZERO
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven a!1 a!2))
    a!3)))

(check-sat)
(exit)
