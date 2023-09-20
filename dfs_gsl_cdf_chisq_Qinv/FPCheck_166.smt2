(declare-fun x_ack!494 () (_ BitVec 64))
(declare-fun nu_ack!493 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!494) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!494) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!494) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!494) ((_ to_fp 11 53) #x3fee666666666666)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) nu_ack!493)
                ((_ to_fp 11 53) #x4000000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) nu_ack!493)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!493)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1))
                   ((_ to_fp 11 53) #x3feffffffffff950))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40852429b6c30b05)
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!493)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3feffffffffff950)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!493)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!5 a!4)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xc06613ae51a32f5d)
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4010000000000000))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!493)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq a!6 a!4))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!493)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!6 a!5)
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x402903c27f8b9c81)
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4014000000000000)))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!493)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000))))))
  (fp.eq a!7 a!5)))))))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu_ack!493)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x4018000000000000))

(check-sat)
(exit)
