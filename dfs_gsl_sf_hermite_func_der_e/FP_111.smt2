(declare-fun a_ack!2886 () (_ BitVec 32))
(declare-fun b_ack!2884 () (_ BitVec 32))
(declare-fun c_ack!2885 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!2886 #x00000000)))
(assert (not (bvslt b_ack!2884 #x00000000)))
(assert (not (= #x00000000 a_ack!2886)))
(assert (= #x00000001 a_ack!2886))
(assert (bvsle #x00000002 b_ack!2884))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvsle #x00000003 b_ack!2884))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
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
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
  (not (fp.gt (fp.abs a!6) ((_ to_fp 11 53) #x3ff0000000000000)))))))))
(assert (bvsle #x00000004 b_ack!2884))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
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
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x3ff0000000000000))))))))))
(assert (not (bvsle #x00000005 b_ack!2884)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) c_ack!2885)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) c_ack!2885)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!2885))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) c_ack!2885))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) c_ack!2885)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
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
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4006a09e667f3bcd)
                                   a!6)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2885)
                                   a!7)))))
  (not (fp.eq a!8 ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
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
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4006a09e667f3bcd)
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2885)
                           a!7))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!8 (CF_exp a!9))
                 a!8)
         (CF_exp a!9))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
(let ((a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       a!2
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!3))))
  (not (fp.eq (fp.abs (CF_exp a!4)) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) c_ack!2885))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
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
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!2885))
                           ((_ to_fp 11 53) c_ack!2885))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe6a09e667f3bcd)
                                   ((_ to_fp 11 53) c_ack!2885))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3febb67ae8584caa)
                           a!4))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4006a09e667f3bcd)
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2885)
                           a!7))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!8 (CF_exp a!9))
                 (CF_exp a!9))
         a!8)))))))))

(check-sat)
(exit)
