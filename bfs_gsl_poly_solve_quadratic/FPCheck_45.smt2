(declare-fun a_ack!224 () (_ BitVec 64))
(declare-fun c_ack!223 () (_ BitVec 64))
(declare-fun b_ack!222 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!222)
                           ((_ to_fp 11 53) b_ack!222))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!224))
                           ((_ to_fp 11 53) c_ack!223)))))
  (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.gt ((_ to_fp 11 53) b_ack!222)
                         ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
  (FPCHECK_FMUL_ACCURACY
    #xbfe0000000000000
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!222)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x7ff0000000000000))))))

(check-sat)
(exit)
