(declare-fun d_ack!1887 () (_ BitVec 64))
(declare-fun b_ack!1886 () (_ BitVec 32))
(declare-fun a_ack!1889 () (_ BitVec 64))
(declare-fun c_ack!1888 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) d_ack!1887) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1886))
(assert (not (bvsle #x00000001 b_ack!1886)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1889) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1888)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1888)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1888)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4048800000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4050000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x4018000000000000)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000)))))
  (not (fp.eq a!12 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4048800000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4050000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!2
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) c_ack!1888)))))
  (not (fp.lt (fp.abs a!12) (fp.abs a!16)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4048800000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4050000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3feffffffffff950)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!2
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x401c000000000000)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) c_ack!1888)))))
  (not (fp.gt (fp.abs a!12) (fp.abs a!16)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc06613ae51a32f5d)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x402903c27f8b9c81)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4039000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfc1bcb2992b2855)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4042000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1888)
                                   ((_ to_fp 11 53) c_ack!1888)))))
      (a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ee4f0514e4e324f)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4048800000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888)))))
      (a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3e8435508f3faeef)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4050000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!1888)
                                    ((_ to_fp 11 53) c_ack!1888))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!1888)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) c_ack!1888)))
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!6
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) c_ack!1888)))
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) c_ack!1888)))
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) c_ack!1888)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!12)
                                    (fp.abs a!12))
                            (fp.div roundNearestTiesToEven
                                    (fp.abs a!12)
                                    (fp.abs a!12))))))
  (FPCHECK_FADD_OVERFLOW
    (CF_log (fp.abs a!12))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (CF_log a!13))))))))))

(check-sat)
(exit)
