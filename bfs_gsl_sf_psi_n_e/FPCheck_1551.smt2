(declare-fun a_ack!4102 () (_ BitVec 32))
(declare-fun b_ack!4101 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (= #x00000000 a_ack!4102)))
(assert (= #x00000001 a_ack!4102))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4101) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4101) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4101) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4101) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4101) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!4101))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc0861b2bdd7abcd2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862642fefa39ef)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
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
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!4 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
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
(let ((a!17 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!2
                                   (fp.add roundNearestTiesToEven a!16 a!2)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!17))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f98618618618619)
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   a!6)
                           a!7)
                   a!8)))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!9 a!10)
                                    a!11)
                            a!12)
                    a!13)))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!14 a!15)
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    a!3)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!3 a!18))
              ((_ to_fp 11 53) #x3ca0000000000000))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!5 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfa1111111111111)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!4 a!5)
                                   a!6)
                           a!7)
                   a!8)))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!9 a!10)
                                    a!11)
                            a!12)
                    a!13)))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!14 a!15)
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!17
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!19 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!3
                                   (fp.add roundNearestTiesToEven a!18 a!3)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!19)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!17 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!5 a!6)
                                    a!7)
                            a!8)
                    a!9)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb364d9364d9365)
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!11)
                                    a!12)
                            a!13)
                    a!14)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!15 a!16)
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    a!4)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!4 a!20))
              ((_ to_fp 11 53) #x3ca0000000000000)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!6 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!17 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!5 a!6)
                                    a!7)
                            a!8)
                    a!9)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfd0330330330330)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!11)
                                    a!12)
                            a!13)
                    a!14)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!15 a!16)
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb364d9364d9365)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!21 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!4
                                   (fp.add roundNearestTiesToEven a!20 a!4)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!21))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!17 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!18 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!6 a!7)
                                    a!8)
                            a!9)
                    a!10)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff2aaaaaaaaaaab)
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!16 a!17)
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb364d9364d9365)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfd0330330330330)
                                    a!4))
                    a!5)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!5 a!22))
              ((_ to_fp 11 53) #x3ca0000000000000))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!7 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!12 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!17 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!18 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!6 a!7)
                                    a!8)
                            a!9)
                    a!10)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc01c5e5e5e5e5e5e)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!16 a!17)
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!19
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb364d9364d9365)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfd0330330330330)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2aaaaaaaaaaab)
                            (fp.div roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!23 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   (fp.add roundNearestTiesToEven a!22 a!5)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!23)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!18 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!19 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!7 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!12 a!13)
                                    a!14)
                            a!15)
                    a!16)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!17 a!18)
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404b7c4f8f13e3c6)
                   (fp.div roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb364d9364d9365)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfd0330330330330)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2aaaaaaaaaaab)
                            (fp.div roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc01c5e5e5e5e5e5e)
                                    a!5))
                    a!6)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!6 a!24))
              ((_ to_fp 11 53) #x3ca0000000000000)))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101))))
      (a!8 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!9 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!4101)))
                   #xc000000000000000))
      (a!10 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!11 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!13 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!14 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4014000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!15 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4018000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!16 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x401c000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!18 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4020000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000))
      (a!19 (CF_pow (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4022000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!4101)))
                    #xc000000000000000)))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (CF_pow a!1 #xc000000000000000)
                           a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (CF_pow a!1 #xc000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!7 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!12 a!13)
                                    a!14)
                            a!15)
                    a!16)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.mul roundNearestTiesToEven a!1 a!1)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!17 a!18)
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fc5555555555555)
                            (fp.div roundNearestTiesToEven
                                    (CF_pow a!1 #xc000000000000000)
                                    a!1)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc08088fe72cfe72d)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f98618618618619)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfa1111111111111)
                                    a!3))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb364d9364d9365)
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!22
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfd0330330330330)
                                    a!4))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff2aaaaaaaaaaab)
                            (fp.div roundNearestTiesToEven
                                    a!4
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!23
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc01c5e5e5e5e5e5e)
                                    a!5))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404b7c4f8f13e3c6)
                            (fp.div roundNearestTiesToEven
                                    a!5
                                    (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!25 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!6
                                   (fp.add roundNearestTiesToEven a!24 a!6)))
                   ((_ to_fp 11 53) #x3ca0000000000000))))
  (not a!25))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!4101)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!1)))

(check-sat)
(exit)
