(declare-fun a_ack!1179 () (_ BitVec 32))
(declare-fun b_ack!1178 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (= #x00000000 a_ack!1179))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!1178))
             ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1178) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1178)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c770ef54646d497))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc770ef54646d497))))
      (a!8 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbc770ef54646d497)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!5)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ca1016e7d6dd662))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ca1016e7d6dd662))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3ca1016e7d6dd662)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven (fp.abs a!7) a!8)
                           ((_ to_fp 11 53) #x3cc8e5599ead4654))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbc770ef54646d497)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #xbcc8e5599ead4654)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!11) a!12)
                            ((_ to_fp 11 53) #x3cf222d09d3968e8))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3ca1016e7d6dd662)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x3cf222d09d3968e8)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.abs a!15)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcc8e5599ead4654)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcc8e5599ead4654)))
                    ((_ to_fp 11 53) #xbd1a6e3544bdd04d))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.abs a!18)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3cf222d09d3968e8))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            a!13
            (fp.add roundNearestTiesToEven
                    a!16
                    ((_ to_fp 11 53) #x3d1a6e3544bdd04d)))
    (fp.add roundNearestTiesToEven a!19 ((_ to_fp 11 53) #x3d4341b653603497))))))))))))))))

(check-sat)
(exit)
