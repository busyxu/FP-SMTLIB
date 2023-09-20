(declare-fun x1_ack!2012 () (_ BitVec 64))
(declare-fun x0_ack!2018 () (_ BitVec 64))
(declare-fun y0_ack!2013 () (_ BitVec 64))
(declare-fun x_ack!2016 () (_ BitVec 64))
(declare-fun y_ack!2017 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!2015 () (_ BitVec 64))
(declare-fun z0_ack!2014 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2018) ((_ to_fp 11 53) x1_ack!2012))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2013) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2016) ((_ to_fp 11 53) x0_ack!2018))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2016) ((_ to_fp 11 53) x1_ack!2012)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2017) ((_ to_fp 11 53) y0_ack!2013))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2017) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2018))
               ((_ to_fp 11 53) x0_ack!2018))
       ((_ to_fp 11 53) x1_ack!2012)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2012)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2012)
                       ((_ to_fp 11 53) x0_ack!2018)))
       ((_ to_fp 11 53) x0_ack!2018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2017)
                       ((_ to_fp 11 53) y0_ack!2013))
               ((_ to_fp 11 53) y0_ack!2013))
       ((_ to_fp 11 53) y_ack!2017)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2017)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2017)
                       ((_ to_fp 11 53) y0_ack!2013)))
       ((_ to_fp 11 53) y0_ack!2013)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2016)
                           ((_ to_fp 11 53) x0_ack!2018))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2012)
                           ((_ to_fp 11 53) x0_ack!2018))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2017)
                                   ((_ to_fp 11 53) y0_ack!2013))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2013))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!2014))))
  (FPCHECK_FADD_ACCURACY
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!2015))))))

(check-sat)
(exit)
