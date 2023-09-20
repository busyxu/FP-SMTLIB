(declare-fun c_ack!1399 () (_ BitVec 64))
(declare-fun a_ack!1400 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!1398 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1400 #xffffffff)))
(assert (not (= #xffffffff a_ack!1400)))
(assert (not (= #x00000000 a_ack!1400)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1399) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1400))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1399)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1399)
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
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1400))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1398)
                    ((_ to_fp 11 53) b_ack!1398))
            (fp.mul roundNearestTiesToEven a!1 a!1))
    #x3ff0000000000000)))

(check-sat)
(exit)
