(declare-fun x_ack!3437 () (_ BitVec 64))
(declare-fun a_ack!3436 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3437)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3437) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     ((_ to_fp 11 53) a_ack!3436))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!3436))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!3436)))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) a_ack!3436)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!3436)
                          ((_ to_fp 11 53) #xffffffdfdffe0000)))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          ((_ to_fp 11 53) a_ack!3436)))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3436))))
  (not (fp.leq (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!3436))
               ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3436))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3436)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3436))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3436)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!2))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3436) ((_ to_fp 11 53) #x4330000000000000))))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                          ((_ to_fp 11 53) a_ack!3436)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!3436)
                          ((_ to_fp 11 53) #x40c3880000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3436))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!3436))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3436))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3436)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!3436))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!3436))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!4 a!5))
              ((_ to_fp 11 53) #x3cb0000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!3436))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4)))
(let ((a!7 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!5
                                  (fp.add roundNearestTiesToEven a!6 a!5)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!7))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!3436))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!8 (fp.abs (fp.div roundNearestTiesToEven
                           a!6
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!7 a!5)
                                   a!6)))))
  (not (fp.lt a!8 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!3436))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3436)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   a!7
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!8 a!5)
                                   a!6)
                           a!7))))
  (not (fp.lt (fp.abs a!9) ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x0000000000000000)
                  ((_ to_fp 11 53) a_ack!3436))
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!3436)
          ((_ to_fp 11 53) #x401c000000000000))))

(check-sat)
(exit)
