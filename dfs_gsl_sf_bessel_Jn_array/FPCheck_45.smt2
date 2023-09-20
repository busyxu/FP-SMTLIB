(declare-fun a_ack!215 () (_ BitVec 32))
(declare-fun b_ack!213 () (_ BitVec 32))
(declare-fun c_ack!214 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!215 #x00000000)))
(assert (not (bvslt b_ack!213 a_ack!215)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!213) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!213)))
(assert (= #x00000000 b_ack!213))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!214))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!214))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!214))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!214))
       ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!214)))
                   (fp.abs ((_ to_fp 11 53) c_ack!214)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!214)))
                   (fp.abs ((_ to_fp 11 53) c_ack!214)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!214)))
                   (fp.abs ((_ to_fp 11 53) c_ack!214)))))
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
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_ACCURACY a!4 #x3c895d4100811d0c))))))

(check-sat)
(exit)
