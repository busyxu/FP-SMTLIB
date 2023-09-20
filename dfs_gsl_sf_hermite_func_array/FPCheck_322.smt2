(declare-fun a_ack!1300 () (_ BitVec 32))
(declare-fun b_ack!1299 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1300 #x00000000)))
(assert (not (= #x00000000 a_ack!1300)))
(assert (not (= #x00000001 a_ack!1300)))
(assert (bvsle #x00000002 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1299))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1299))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvsle #x00000003 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
  (not (fp.gt (fp.abs a!6) ((_ to_fp 11 53) #x3ff0000000000000)))))))))
(assert (bvsle #x00000004 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x3ff0000000000000))))))))))
(assert (bvsle #x00000005 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
  (not (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))
(assert (bvsle #x00000006 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
  (not (fp.gt (fp.abs a!9) ((_ to_fp 11 53) #x3ff0000000000000))))))))))))
(assert (bvsle #x00000007 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))))
(assert (bvsle #x00000008 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
  (not (fp.gt (fp.abs a!11) ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))
(assert (bvsle #x00000009 a_ack!1300))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) #x3fde2b7dddfefa66))
       ((_ to_fp 11 53) b_ack!1299)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1299))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) b_ack!1299))
       ((_ to_fp 11 53) #x3fde2b7dddfefa66)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
  (not (fp.gt (fp.abs a!12) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))))))
(assert (bvsle #x0000000a a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
  (not (fp.gt (fp.abs a!13) ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))))
(assert (bvsle #x0000000b a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
  (not (fp.gt (fp.abs a!14) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))))))))
(assert (bvsle #x0000000c a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
  (not (fp.gt (fp.abs a!15) ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))))))
(assert (bvsle #x0000000d a_ack!1300))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fd91a556151761c)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) #x3fd91a556151761c))
       ((_ to_fp 11 53) b_ack!1299)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1299))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fd91a556151761c)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) b_ack!1299))
       ((_ to_fp 11 53) #x3fd91a556151761c)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
  (not (fp.gt (fp.abs a!16) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))))))))))
(assert (bvsle #x0000000e a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
  (not (fp.gt (fp.abs a!17) ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))))))))
(assert (bvsle #x0000000f a_ack!1300))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fd75e9746a0b098)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) #x3fd75e9746a0b098))
       ((_ to_fp 11 53) b_ack!1299)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!1299))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fd75e9746a0b098)
                       ((_ to_fp 11 53) b_ack!1299))
               ((_ to_fp 11 53) b_ack!1299))
       ((_ to_fp 11 53) #x3fd75e9746a0b098)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fd75e9746a0b098)
                                  ((_ to_fp 11 53) b_ack!1299)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd75e9746a0b098)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fd75e9746a0b098)
                            ((_ to_fp 11 53) b_ack!1299)))))
  (fp.eq a!18 a!17)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
  (not (fp.eq (fp.abs a!17) ((_ to_fp 11 53) #x0000000000000000))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd75e9746a0b098)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!17)
                    a!17)))
  (fp.eq a!18
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd75e9746a0b098)
                 ((_ to_fp 11 53) b_ack!1299)))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd75e9746a0b098)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feeea3950a8511e)
                            a!16))))
  (not (fp.gt (fp.abs a!18) ((_ to_fp 11 53) #x3ff0000000000000)))))))))))))))))))))
(assert (bvsle #x00000010 a_ack!1300))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!1299))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe43d136248490f)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fec9f25c5bfedd9)
                           a!6))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe279a74590331c)
                                   ((_ to_fp 11 53) b_ack!1299))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fed363d1848dcbf)
                           a!7))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe11acee560242a)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feda05179501504)
                            a!8))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fedeeea11683f49)
                            a!9))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fde2b7dddfefa66)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee2b7dddfefa66)
                            a!10))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdc9f25c5bfedd9)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee5b9d136c6d96)
                            a!11))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fdb4a293c1d9550)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fee82c3f9d89e1c)
                            a!12))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fda20bd700c2c3e)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feea33e2c83c140)
                            a!13))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd91a556151761c)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feebe9e77d23f6f)
                            a!14))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd83091e6a7f7e6)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feed6023ba6dba2)
                            a!15))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd75e9746a0b098)
                                    ((_ to_fp 11 53) b_ack!1299))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3feeea3950a8511e)
                            a!16))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd6a09e667f3bcd)
                    ((_ to_fp 11 53) b_ack!1299))
            a!18)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3feefbdeb14f4eda) a!17))))))))))))))))))))

(check-sat)
(exit)
