(declare-fun a_ack!3031 () (_ BitVec 64))
(declare-fun c_ack!3030 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3031) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3031))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!3031)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.lt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) c_ack!3030))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (fp.gt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) c_ack!3030)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) c_ack!3030))
                 (fp.abs a!1)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) c_ack!3030))
                 (fp.abs a!1)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven (CF_log (fp.abs a!1)) a!3)
                   (CF_log (fp.abs a!1)))))
  (fp.eq a!4 a!3))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3031)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3030))
                           (fp.abs a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven (CF_log (fp.abs a!1)) a!3)
                   a!3)))
  (fp.eq a!4 (CF_log (fp.abs a!1))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))))))
  (not (fp.eq a!17 ((_ to_fp 11 53) #x0000000000000000))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!19 (fp.sub roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030)))))
  (fp.lt (fp.abs a!17) (fp.abs a!25)))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!19 (fp.sub roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030)))))
  (not (fp.gt (fp.abs a!17) (fp.abs a!25))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!19 (fp.sub roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (fp.abs a!17) (fp.abs a!25))
                    (fp.div roundNearestTiesToEven (fp.abs a!17) (fp.abs a!25)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!26)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!26)))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!19 (fp.sub roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven (fp.abs a!17) (fp.abs a!25))
                    (fp.div roundNearestTiesToEven (fp.abs a!17) (fp.abs a!25)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!26)
                 a!26)
         ((_ to_fp 11 53) #x3ff0000000000000))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3feffffffffff950)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (CF_log (fp.abs a!17))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_log a!26)))
                    (CF_log (fp.abs a!17)))))
  (fp.eq a!27
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (CF_log a!26))))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3feffffffffff950)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))))))
(let ((a!27 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (CF_log (fp.abs a!17))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_log a!26)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fe0000000000000)
                            (CF_log a!26)))))
  (fp.eq a!27 (CF_log (fp.abs a!17))))))))))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3031)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3030)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000)))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3030)
                            ((_ to_fp 11 53) c_ack!3030)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3feffffffffff950)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40852429b6c30b05)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                   a!4)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                                    a!4)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!6)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                    a!6)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                   a!8)
                           ((_ to_fp 11 53) c_ack!3030))))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xc06613ae51a32f5d)
                                    a!8)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x402903c27f8b9c81)
                                    a!10)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                                    a!12)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                                    a!14)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            ((_ to_fp 11 53) c_ack!3030))))
      (a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                                    a!16)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4020000000000000))))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!25)
                                    (fp.abs a!17))))))
(let ((a!27 (fp.abs (fp.add roundNearestTiesToEven
                            (CF_log (fp.abs a!17))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    (CF_log a!26))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!27))))))))))))))

(check-sat)
(exit)
