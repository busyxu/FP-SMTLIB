(declare-fun b_ack!333 () (_ BitVec 64))
(declare-fun a_ack!334 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!333) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!334) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!333)
               ((_ to_fp 11 53) b_ack!333))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!334)
                       ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!334) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!333) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!333) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!334) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fd0000000000000)
                                  ((_ to_fp 11 53) b_ack!333)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!333))
                           ((_ to_fp 11 53) b_ack!333))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           ((_ to_fp 11 53) b_ack!333)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!333))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!333))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   ((_ to_fp 11 53) b_ack!333))
                           ((_ to_fp 11 53) b_ack!333))
                   ((_ to_fp 11 53) b_ack!333))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fd0000000000000)
                 ((_ to_fp 11 53) b_ack!333)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!334)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
