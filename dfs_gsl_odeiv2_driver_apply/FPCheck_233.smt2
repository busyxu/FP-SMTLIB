(declare-fun t_ack!1778 () (_ BitVec 64))
(declare-fun t1_ack!1775 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1776 () (_ BitVec 64))
(declare-fun y1_ack!1777 () (_ BitVec 64))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!1775)
                                  ((_ to_fp 11 53) t_ack!1778)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!1775)
                       ((_ to_fp 11 53) t_ack!1778)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!1775)
                       ((_ to_fp 11 53) t_ack!1778))
               ((_ to_fp 11 53) t_ack!1778))
       ((_ to_fp 11 53) t1_ack!1775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!1775)
                       ((_ to_fp 11 53) t_ack!1778)))
       ((_ to_fp 11 53) t_ack!1778)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1775)
                    ((_ to_fp 11 53) t_ack!1778))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1775)
               ((_ to_fp 11 53) t_ack!1778))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1775)
                ((_ to_fp 11 53) t_ack!1778))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1775)
               ((_ to_fp 11 53) t_ack!1778))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!1775)
                                   ((_ to_fp 11 53) t_ack!1778)))
                   ((_ to_fp 11 53) #x3fac71c71c71c71c))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) t1_ack!1775)
                 ((_ to_fp 11 53) t_ack!1778)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) t1_ack!1775)
                                  ((_ to_fp 11 53) t_ack!1778)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fac71c71c71c71c)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) t1_ack!1775)
                                   ((_ to_fp 11 53) t_ack!1778)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1775)
                           ((_ to_fp 11 53) t_ack!1778)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3fac71c71c71c71c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!1777))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!1776)
                                   ((_ to_fp 11 53) y0_ack!1776))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fac71c71c71c71c)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1775)
                           ((_ to_fp 11 53) t_ack!1778)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f95555555555555)
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1776))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1776)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1777)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) y0_ack!1776))
                           a!1)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1776)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1777)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) y0_ack!1776)
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) y1_ack!1777)))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fa0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) y0_ack!1776))
                            a!1))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1777)
                                   a!5))
                   (fp.sub roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f95555555555555)
                            ((_ to_fp 11 53) y1_ack!1777))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3fb0000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!1777)
                                    a!5)))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) t1_ack!1775)
                           ((_ to_fp 11 53) t_ack!1778))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fb0000000000000)
                                   (fp.sub roundNearestTiesToEven a!4 a!7)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y0_ack!1776)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!1775)
                                    ((_ to_fp 11 53) t_ack!1778))
                            a!11))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           ((_ to_fp 11 53) y1_ack!1777))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbff2c00000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1777)
                                   a!8))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4024000000000000)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) y1_ack!1777)
                                    a!8))
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!12 a!12)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb8000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!12)
                            a!13))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!1777)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) t1_ack!1775)
                                    ((_ to_fp 11 53) t_ack!1778))
                            (fp.add roundNearestTiesToEven a!10 a!14)))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) t1_ack!1775)
                            ((_ to_fp 11 53) t_ack!1778))
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff2c00000000000)
                                    a!15)))))
  (FPCHECK_FSUB_ACCURACY
    #x8000000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!1776) a!16)))))))))))

(check-sat)
(exit)
