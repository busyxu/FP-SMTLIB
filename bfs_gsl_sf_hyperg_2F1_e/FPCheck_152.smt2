(declare-fun a_ack!950 () (_ BitVec 64))
(declare-fun b_ack!947 () (_ BitVec 64))
(declare-fun c_ack!948 () (_ BitVec 64))
(declare-fun d_ack!949 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!950) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!947) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!948) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!949)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!949) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!949))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!948)
                                  ((_ to_fp 11 53) b_ack!947)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!948)
                                  ((_ to_fp 11 53) a_ack!950)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!950) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!950))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!950))
            (fp.abs ((_ to_fp 11 53) b_ack!947)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!949) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!950))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!947)))
                   (fp.abs ((_ to_fp 11 53) d_ack!949)))))
(let ((a!2 (fp.lt a!1
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4000000000000000)
                          (fp.abs ((_ to_fp 11 53) c_ack!948))))))
  (not a!2))))
(assert (FPCHECK_FMUL_ACCURACY #x3f50624dd2f1a9fc (fp.abs ((_ to_fp 11 53) b_ack!947))))

(check-sat)
(exit)
