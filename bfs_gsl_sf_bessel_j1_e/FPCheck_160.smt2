(declare-fun a_ack!231 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!231))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!231))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!231))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!231))
                           (fp.abs ((_ to_fp 11 53) a_ack!231))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #xbc8cd2b297d889bc))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ca42d169d7dfa04)))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x3ca42d169d7dfa04))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3c8cd2b297d889bc)))
                   a!6))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs (fp.mul roundNearestTiesToEven a!3 a!8))
                           (fp.abs a!5))
                   ((_ to_fp 11 53) #x3cbc1a3aeda65317)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!8)
                            a!5)
                    ((_ to_fp 11 53) #xbcbc1a3aeda65317))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!10))
                            (fp.abs a!8))
                    ((_ to_fp 11 53) #x3cd3a2bcddd85108)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!3 a!10)
                            a!8)
                    ((_ to_fp 11 53) #x3cd3a2bcddd85108))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.abs (fp.mul roundNearestTiesToEven a!3 a!12))
                            (fp.abs a!10))
                    ((_ to_fp 11 53) #x3cec5f67cd792795)))
      (a!14 (fp.mul roundNearestTiesToEven
                    a!3
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!12)
                                    a!10)
                            ((_ to_fp 11 53) #xbcec5f67cd792795)))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven a!7 a!9)
                    a!11)
            a!13)
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!14) (fp.abs a!12))
            ((_ to_fp 11 53) #x3d0524f76a317371))))))))))))

(check-sat)
(exit)
