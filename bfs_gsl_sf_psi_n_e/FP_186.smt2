(declare-fun a_ack!4390 () (_ BitVec 32))
(declare-fun b_ack!4389 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (= #x00000000 a_ack!4390)))
(assert (= #x00000001 a_ack!4390))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4389) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4389) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4389) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!4389))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4389))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000)))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc5555555555555)
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           a!6)
                   a!7)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!8 a!9)
                                    a!10)
                            a!11)
                    a!12)))
(let ((a!16 (fp.div roundNearestTiesToEven
                    a!2
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!13 a!14)
                                    a!15)
                            a!2))))
  (not (fp.lt (fp.abs a!16) ((_ to_fp 11 53) #x3ca0000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4389))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4389)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4389)))
                    #xc000000000000000)))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa1111111111111)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_pow a!1 #xc000000000000000)
                                   a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           a!6)
                   a!7)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!8 a!9)
                                    a!10)
                            a!11)
                    a!12)))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!13 a!14)
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!2
                         (fp.add roundNearestTiesToEven a!16 a!2)))
         ((_ to_fp 11 53) #x3ca0000000000000))))))))

(check-sat)
(exit)
