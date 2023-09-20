(declare-fun c_ack!1214 () (_ BitVec 64))
(declare-fun a_ack!1215 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1214) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1215 #xffffffff)))
(assert (not (= #xffffffff a_ack!1215)))
(assert (not (= #x00000000 a_ack!1215)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1214) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1214) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1215))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1214)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1214)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (not (fp.eq (fp.add roundNearestTiesToEven
                               a!2
                               ((_ to_fp 11 53) #x3ff0000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (and a!3
                (fp.eq (fp.add roundNearestTiesToEven
                               a!4
                               ((_ to_fp 11 53) #x0000000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!5))))))
(assert (FPCHECK_FADD_ACCURACY
  #xbfe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1215)))

(check-sat)
(exit)
