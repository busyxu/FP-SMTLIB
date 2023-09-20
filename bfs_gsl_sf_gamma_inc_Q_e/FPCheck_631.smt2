(declare-fun a_ack!1710 () (_ BitVec 64))
(declare-fun b_ack!1709 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1709) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1709) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1709)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!1710)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) b_ack!1709))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1709)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1710)
                    ((_ to_fp 11 53) #xffffffffffffffff)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1709)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1710)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1709)
                                   ((_ to_fp 11 53) a_ack!1710))
                           ((_ to_fp 11 53) a_ack!1710))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1709)
                                   ((_ to_fp 11 53) a_ack!1710))
                           ((_ to_fp 11 53) a_ack!1710)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1709)
                                   ((_ to_fp 11 53) a_ack!1710))
                           ((_ to_fp 11 53) a_ack!1710)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1710) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1709)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                    ((_ to_fp 11 53) a_ack!1710)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1709)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1710)
                    ((_ to_fp 11 53) #x40c3880000000000)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1709) ((_ to_fp 11 53) a_ack!1710))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2))))
  (not (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!3 a!4))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1709)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1710)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!6 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!4
                                  (fp.add roundNearestTiesToEven a!5 a!4)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!6)))))))
(assert (FPCHECK_FDIV_INVALID
  b_ack!1709
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1710)
          ((_ to_fp 11 53) #x4014000000000000))))

(check-sat)
(exit)
