(declare-fun c_ack!2410 () (_ BitVec 64))
(declare-fun a_ack!2411 () (_ BitVec 32))
(declare-fun b_ack!2409 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2410) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!2411 #xffffffff)))
(assert (not (= #xffffffff a_ack!2411)))
(assert (= #x00000000 a_ack!2411))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2410) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2410) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2409) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!2410) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2409) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2410)
                       ((_ to_fp 11 53) c_ack!2410)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) b_ack!2409)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2410)
                       ((_ to_fp 11 53) c_ack!2410)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fe0000000000000)
                       ((_ to_fp 11 53) b_ack!2409)))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff8000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2410)
                                   ((_ to_fp 11 53) c_ack!2410))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1)
                           ((_ to_fp 11 53) #x3fe8000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3feffffffffff950))
         (fp.mul roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x40852429b6c30b05)
                         a!1)
                 ((_ to_fp 11 53) #x3fe8000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe2000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3feffffffffff950)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1)
                           ((_ to_fp 11 53) #x3fe8000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40852429b6c30b05)
                                   a!1)
                           ((_ to_fp 11 53) #x3fe8000000000000)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3feffffffffff950))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401e400000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401e400000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!1)
                           ((_ to_fp 11 53) #x4006000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x4006000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x401e400000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                                   a!1)
                           ((_ to_fp 11 53) #x4006000000000000))
                   ((_ to_fp 11 53) #x4006000000000000))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x40881a9661d3b4d8)
                 a!1)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!2409)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!2409)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xbfe0000000000000)
                                  ((_ to_fp 11 53) b_ack!2409)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe0000000000000)
                 ((_ to_fp 11 53) b_ack!2409)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe8000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008800000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ffc000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401e400000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4006000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c200000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x400e000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4036900000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4013000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   a!2)
                           a!3)
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.add roundNearestTiesToEven a!5 a!6)
                         a!7)
                 (fp.add roundNearestTiesToEven a!5 a!6))
         a!7)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe8000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008800000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ffc000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401e400000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4006000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c200000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x400e000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4036900000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4013000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   a!2)
                           a!3)
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.add roundNearestTiesToEven a!5 a!6)
                         a!7)
                 a!7)
         (fp.add roundNearestTiesToEven a!5 a!6))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe8000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008800000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ffc000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401e400000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4006000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c200000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x400e000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4036900000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4013000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040880000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4017000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   a!2)
                           a!3)
                   a!4)))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!5 a!6)
                                   a!7)
                           a!8)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!5 a!6)
                           a!7))))
  (fp.eq a!9 a!8))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!2409)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40852429b6c30b05)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe2000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3fe8000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008800000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ffc000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40881a9661d3b4d8)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401e400000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4006000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc06613ae51a32f5d)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x402c200000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x400e000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x402903c27f8b9c81)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4036900000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4013000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040880000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x4017000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3feffffffffff950)
                                   a!2)
                           a!3)
                   a!4)))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!5 a!6)
                                   a!7)
                           a!8)
                   a!8)))
  (fp.eq a!9
         (fp.add roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!5 a!6)
                 a!7)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040880000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!2409))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.div roundNearestTiesToEven ((_ to_fp 11 53) #xbfc1bcb2992b2855) a!1)
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #xbfe0000000000000)
            ((_ to_fp 11 53) b_ack!2409)))))

(check-sat)
(exit)
