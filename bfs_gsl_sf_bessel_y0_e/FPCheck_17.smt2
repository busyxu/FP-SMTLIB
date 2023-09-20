(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!27)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!27)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!27))
                           (fp.abs ((_ to_fp 11 53) a_ack!27)))
                   (fp.abs ((_ to_fp 11 53) a_ack!27)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!27)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!27)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!27))
                           (fp.abs ((_ to_fp 11 53) a_ack!27)))
                   (fp.abs ((_ to_fp 11 53) a_ack!27)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!27)))))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fc0000000000000)
                  ((_ to_fp 11 53) a_ack!27))
          ((_ to_fp 11 53) a_ack!27))
  #x3ff0000000000000))

(check-sat)
(exit)
