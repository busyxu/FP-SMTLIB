(declare-fun a_ack!894 () (_ BitVec 64))
(declare-fun b_ack!893 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!893) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!893) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!893)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!894)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!893)
                                   ((_ to_fp 11 53) a_ack!894))
                           ((_ to_fp 11 53) a_ack!894))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!893)
                                   ((_ to_fp 11 53) a_ack!894))
                           ((_ to_fp 11 53) a_ack!894)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!893)
                                   ((_ to_fp 11 53) a_ack!894))
                           ((_ to_fp 11 53) a_ack!894)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!894) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!893)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                    ((_ to_fp 11 53) a_ack!894)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!893)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!894)
                    ((_ to_fp 11 53) #x40c3880000000000)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!893) ((_ to_fp 11 53) a_ack!894))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
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
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
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
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
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
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
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
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!893)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!894)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
  (FPCHECK_FADD_OVERFLOW (fp.add roundNearestTiesToEven a!4 a!5) a!6)))))))

(check-sat)
(exit)
