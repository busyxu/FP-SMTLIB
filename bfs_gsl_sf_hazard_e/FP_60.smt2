(declare-fun a_ack!579 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) a_ack!579) ((_ to_fp 11 53) #x4039000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!579)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!579)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (fp.gt (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!9)))
                   ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!10)))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (fp.lt (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc000000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!9)))
                   ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!10)))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.abs ((_ to_fp 11 53) a_ack!579))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (CF_exp (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs a!10))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            (fp.abs a!10)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!12
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3cc0000000000000)
                         (fp.abs a!10)))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!11
                         ((_ to_fp 11 53) #x3cb0000000000000))
                 (fp.abs a!10))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.abs ((_ to_fp 11 53) a_ack!579))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (CF_exp (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs a!10))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            (fp.abs a!10)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            (fp.abs a!10)))))
  (fp.eq a!13
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cc0000000000000)
                 (fp.abs a!10)))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.abs ((_ to_fp 11 53) a_ack!579))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (CF_exp (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3cc0000000000000)
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs a!10))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            (fp.abs a!10)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.abs (fp.mul roundNearestTiesToEven a!13 a!10)))
                    a!12)))
  (fp.eq a!14 (fp.abs (fp.mul roundNearestTiesToEven a!13 a!10)))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfcce6bb25aa1316)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!579))
                           ((_ to_fp 11 53) a_ack!579))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!579)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b)))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.abs ((_ to_fp 11 53) a_ack!579))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4f00f4c5e56661)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f55a095517b6a89)
                                   a!3)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f76d032987dfc5c)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbf72a9a996f42c40)
                                   (fp.mul roundNearestTiesToEven a!2 a!4))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf909adcd0cdcabe)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f54a491dcf7afed)
                                   (fp.mul roundNearestTiesToEven a!2 a!5))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf5dfa96dcbd2883)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f9aed7943500fa5)
                                   (fp.mul roundNearestTiesToEven a!2 a!6))))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd2500c749f87c0)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb82a4705ae6ca0)
                                   (fp.mul roundNearestTiesToEven a!2 a!7))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!8))))))
(let ((a!10 (CF_exp (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3cc0000000000000)
                    (fp.abs (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc000000000000000)
                                    (fp.mul roundNearestTiesToEven a!2 a!9))))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3cc0000000000000)
                            (fp.abs a!10))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3cb0000000000000))
                            (fp.abs a!10)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.abs (fp.mul roundNearestTiesToEven a!13 a!10)))
                    (fp.abs (fp.mul roundNearestTiesToEven a!13 a!10)))))
  (fp.eq a!14 a!12)))))))))))))

(check-sat)
(exit)
