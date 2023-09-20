(declare-fun x1_ack!2012 () (_ BitVec 64))
(declare-fun x0_ack!2019 () (_ BitVec 64))
(declare-fun x2_ack!2013 () (_ BitVec 64))
(declare-fun b_ack!2018 () (_ BitVec 64))
(declare-fun a_ack!2017 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2014 () (_ BitVec 64))
(declare-fun y1_ack!2015 () (_ BitVec 64))
(declare-fun y2_ack!2016 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2019) ((_ to_fp 11 53) x1_ack!2012)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2012) ((_ to_fp 11 53) x2_ack!2013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2019))
               ((_ to_fp 11 53) x0_ack!2019))
       ((_ to_fp 11 53) x1_ack!2012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2019)))
       ((_ to_fp 11 53) x0_ack!2019)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2013)
                       ((_ to_fp 11 53) x1_ack!2012))
               ((_ to_fp 11 53) x1_ack!2012))
       ((_ to_fp 11 53) x2_ack!2013)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2013)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2013)
                       ((_ to_fp 11 53) x1_ack!2012)))
       ((_ to_fp 11 53) x1_ack!2012)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2012)
                    ((_ to_fp 11 53) x0_ack!2019))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2013)
                    ((_ to_fp 11 53) x1_ack!2012))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2017) ((_ to_fp 11 53) b_ack!2018))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2017) ((_ to_fp 11 53) x0_ack!2019))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2018) ((_ to_fp 11 53) x2_ack!2013))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2017) ((_ to_fp 11 53) b_ack!2018))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2017) ((_ to_fp 11 53) x0_ack!2019))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2017) ((_ to_fp 11 53) x1_ack!2012))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!2018) ((_ to_fp 11 53) x0_ack!2019)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2012)
                    ((_ to_fp 11 53) x0_ack!2019))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!2018)
                                  ((_ to_fp 11 53) x0_ack!2019)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2018)
                           ((_ to_fp 11 53) x0_ack!2019)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2018)
                 ((_ to_fp 11 53) x0_ack!2019)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!2018)
                                  ((_ to_fp 11 53) x0_ack!2019)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2018)
                           ((_ to_fp 11 53) x0_ack!2019)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!2018)
                 ((_ to_fp 11 53) x0_ack!2019)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2016)
                           ((_ to_fp 11 53) y1_ack!2015))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2013)
                                   ((_ to_fp 11 53) x1_ack!2012)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2015)
                           ((_ to_fp 11 53) y0_ack!2014))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2012)
                                   ((_ to_fp 11 53) x0_ack!2019)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2013)
                                   ((_ to_fp 11 53) x1_ack!2012))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2012)
                                   ((_ to_fp 11 53) x0_ack!2019)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2017)
                           ((_ to_fp 11 53) x0_ack!2019))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2018)
                           ((_ to_fp 11 53) x0_ack!2019))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2017)
                                   ((_ to_fp 11 53) x0_ack!2019))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2017)
                                   ((_ to_fp 11 53) x0_ack!2019)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2018)
                                   ((_ to_fp 11 53) x0_ack!2019))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2017)
                                    ((_ to_fp 11 53) x0_ack!2019))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!2018)
                                    ((_ to_fp 11 53) x0_ack!2019))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2012)
                                   ((_ to_fp 11 53) x0_ack!2019))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!2012)
                                    ((_ to_fp 11 53) x0_ack!2019))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!2015)
                                   ((_ to_fp 11 53) y0_ack!2014))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2012)
                                   ((_ to_fp 11 53) x0_ack!2019)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!2014)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10))
                    a!12)))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!2018)
            ((_ to_fp 11 53) a_ack!2017))
    a!13))))))))

(check-sat)
(exit)
