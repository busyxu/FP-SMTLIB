(declare-fun a_ack!6379 () (_ BitVec 64))
(declare-fun c_ack!6377 () (_ BitVec 64))
(declare-fun d_ack!6378 () (_ BitVec 64))
(declare-fun b_ack!6376 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!6377)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!6377)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!6377))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!6378))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!6378))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!6379))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!6376))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6376)
                           ((_ to_fp 11 53) b_ack!6376)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.geq (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) d_ack!6378)))
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6376)
                           ((_ to_fp 11 53) b_ack!6376)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) d_ack!6378)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) d_ack!6378))))))
(let ((a!5 (fp.abs (fp.div roundNearestTiesToEven
                           a!3
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!5 ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) c_ack!6377)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6379)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!6376)
                           ((_ to_fp 11 53) b_ack!6376)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) d_ack!6378))))))
(let ((a!5 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          (fp.sub roundNearestTiesToEven
                                  a!4
                                  ((_ to_fp 11 53) #x0000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377)))
                   (fp.abs ((_ to_fp 11 53) c_ack!6377)))))
  (fp.lt (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x8000000000000000)
                 (CF_log a!8))
         ((_ to_fp 11 53) #x40762e42fefa39ef)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377)))
                   (fp.abs ((_ to_fp 11 53) c_ack!6377)))))
  (not (fp.gt (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) #x8000000000000000)
                      (CF_log a!8))
              ((_ to_fp 11 53) #xc076232bdd7abcd2))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4ff0a5d7d0b01e)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd)))))
      (a!9 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) c_ack!6377)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!6379)
                                    ((_ to_fp 11 53) #x0000000000000000))
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!6379)
                                    ((_ to_fp 11 53) #x0000000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!6376)
                            ((_ to_fp 11 53) b_ack!6376)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f7060754242e352)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf5f094bd00128ce)
                                   a!1))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!6377)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf7c0fac8a677a84)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!2))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) d_ack!6378))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf92b5df55ed2958)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f926fe278e930ae)
                                   a!3))))
      (a!13 (fp.abs (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!6377)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb7af73866da4e8)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!6377)
                                   a!4)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfb3c467e37db0c8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf8669cf713aa1e2)
                                   a!5)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!6377)
                           a!6)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!7
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) c_ack!6377)))
                   (fp.abs ((_ to_fp 11 53) c_ack!6377)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (CF_log a!8))
    (CF_log a!13)))))))))))

(check-sat)
(exit)
