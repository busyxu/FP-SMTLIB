(declare-fun a_ack!5905 () (_ BitVec 32))
(declare-fun b_ack!5903 () (_ BitVec 32))
(declare-fun c_ack!5904 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!5905 #x00000000)))
(assert (not (bvslt b_ack!5903 a_ack!5905)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5904) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!5903))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5904) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5904) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5904))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5904)
                       ((_ to_fp 11 53) c_ack!5904))
               ((_ to_fp 11 53) c_ack!5904))
       ((_ to_fp 11 53) c_ack!5904)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5904))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5904)
                       ((_ to_fp 11 53) c_ack!5904))
               ((_ to_fp 11 53) c_ack!5904))
       ((_ to_fp 11 53) c_ack!5904)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5904)
                           ((_ to_fp 11 53) c_ack!5904))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5904)
                           ((_ to_fp 11 53) c_ack!5904))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5904)
                           ((_ to_fp 11 53) c_ack!5904)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!1)))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ec02e1f9fbac1eb)
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3e656cf1aeb212bc))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eef47476772d4d9)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!2)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f5c71c71bafcbaf)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f12345703982239)
                                    a!9)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4bb90e85e098db)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!3)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcfffffffffffc0)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f9c71c71c7247e2)
                                    (fp.mul roundNearestTiesToEven a!8 a!10))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f99dadb01454042)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!4)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!8 a!11))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd1dadb014541ec)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbdadb014541eb2)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!6))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (CF_log c_ack!5904)
                                    a!12))
                    (fp.mul roundNearestTiesToEven (CF_log c_ack!5904) a!12))))
  (fp.eq a!13 a!7))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5904)
                           ((_ to_fp 11 53) c_ack!5904)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!1)))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ec02e1f9fbac1eb)
                           (fp.mul roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3e656cf1aeb212bc))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eef47476772d4d9)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!2)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f5c71c71bafcbaf)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f12345703982239)
                                    a!9)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4bb90e85e098db)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!3)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fcfffffffffffc0)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3f9c71c71c7247e2)
                                    (fp.mul roundNearestTiesToEven a!8 a!10))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f99dadb01454042)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!4)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!8 a!11))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd1dadb014541ec)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!5))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fbdadb014541eb2)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!5904)
                                   ((_ to_fp 11 53) c_ack!5904))
                           a!6))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.sub roundNearestTiesToEven
                            a!7
                            (fp.mul roundNearestTiesToEven
                                    (CF_log c_ack!5904)
                                    a!12)))))
  (fp.eq a!13 (fp.mul roundNearestTiesToEven (CF_log c_ack!5904) a!12)))))))))))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff999999999999a
  (fp.mul roundNearestTiesToEven
          (fp.abs (CF_log c_ack!5904))
          ((_ to_fp 11 53) #x3fe3333333333333))))

(check-sat)
(exit)
