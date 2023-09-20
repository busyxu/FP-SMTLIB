(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!27))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!27)
                       ((_ to_fp 11 53) a_ack!27))
               ((_ to_fp 11 53) a_ack!27))
       ((_ to_fp 11 53) a_ack!27)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!27))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!27)
                       ((_ to_fp 11 53) a_ack!27))
               ((_ to_fp 11 53) a_ack!27))
       ((_ to_fp 11 53) a_ack!27)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!27)
                                   ((_ to_fp 11 53) a_ack!27))
                           ((_ to_fp 11 53) a_ack!27))
                   ((_ to_fp 11 53) a_ack!27))))
  (FPCHECK_FMUL_ACCURACY
    #x3cd0000000000000
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4010000000000000)))))

(check-sat)
(exit)
